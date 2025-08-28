import { App, Editor, MarkdownView, Notice, Plugin, PluginSettingTab, Setting } from 'obsidian';
import { exec } from 'child_process';
import { promisify } from 'util';
import * as path from 'path';

const execAsync = promisify(exec);

interface SwitchToCursorSettings {
	cursorPath: string;
	workspacePath: string;
}

const DEFAULT_SETTINGS: SwitchToCursorSettings = {
	cursorPath: '',
	workspacePath: ''
}

export default class SwitchToCursorPlugin extends Plugin {
	settings: SwitchToCursorSettings;

	async onload() {
		await this.loadSettings();

		// This creates an icon in the left ribbon.
		const ribbonIconEl = this.addRibbonIcon('external-link', 'Open in Cursor', (evt: MouseEvent) => {
			this.openInCursor();
		});
		ribbonIconEl.addClass('switch-to-cursor-ribbon-class');

		// This adds a simple command that can be triggered anywhere
		this.addCommand({
			id: 'open-in-cursor',
			name: 'Open current file in Cursor',
			callback: () => {
				this.openInCursor();
			}
		});

		// This adds an editor command that can perform some operation on the current editor instance
		this.addCommand({
			id: 'open-in-cursor-with-line',
			name: 'Open in Cursor with current line',
			editorCallback: (editor: Editor, view: MarkdownView) => {
				const cursor = editor.getCursor();
				this.openInCursor(cursor.line + 1);
			}
		});

		// This adds a settings tab so the user can configure various aspects of the plugin
		this.addSettingTab(new SwitchToCursorSettingTab(this.app, this));
	}

	onunload() {
		// Clean up
	}

	async loadSettings() {
		this.settings = Object.assign({}, DEFAULT_SETTINGS, await this.loadData());
		
		// Auto-detect Cursor path if not set
		if (!this.settings.cursorPath) {
			this.settings.cursorPath = await this.detectCursorPath();
		}
		
		// Use vault path as default workspace if not set
		if (!this.settings.workspacePath) {
			this.settings.workspacePath = (this.app.vault.adapter as any).basePath || '';
		}
	}

	async saveSettings() {
		await this.saveData(this.settings);
	}

	async detectCursorPath(): Promise<string> {
		const platform = process.platform;
		let possiblePaths: string[] = [];

		if (platform === 'darwin') {
			possiblePaths = [
				'/Applications/Cursor.app/Contents/MacOS/Cursor',
				'/usr/local/bin/cursor',
				'/opt/homebrew/bin/cursor'
			];
		} else if (platform === 'win32') {
			possiblePaths = [
				'C:\\Users\\%USERNAME%\\AppData\\Local\\Programs\\cursor\\Cursor.exe',
				'C:\\Program Files\\Cursor\\Cursor.exe',
				'cursor'
			];
		} else {
			possiblePaths = [
				'/usr/bin/cursor',
				'/usr/local/bin/cursor',
				'/snap/bin/cursor',
				'cursor'
			];
		}

		for (const path of possiblePaths) {
			try {
				const expandedPath = path.replace('%USERNAME%', process.env.USERNAME || '');
				await execAsync(`"${expandedPath}" --version`);
				return expandedPath;
			} catch (error) {
				// Continue to next path
			}
		}

		return 'cursor'; // Fallback to hoping it's in PATH
	}

	async openInCursor(lineNumber?: number) {
		try {
			const activeFile = this.app.workspace.getActiveFile();
			if (!activeFile) {
				new Notice('No active file to open in Cursor');
				return;
			}

			const filePath = path.join((this.app.vault.adapter as any).basePath || '', activeFile.path);
			const workspacePath = this.settings.workspacePath || (this.app.vault.adapter as any).basePath || '';
			const cursorPath = this.settings.cursorPath || 'cursor';

			let command: string;
			if (lineNumber) {
				command = `"${cursorPath}" "${workspacePath}" --goto "${filePath}:${lineNumber}"`;
			} else {
				command = `"${cursorPath}" "${workspacePath}" "${filePath}"`;
			}

			await execAsync(command);
			new Notice('Opened in Cursor successfully');
		} catch (error) {
			console.error('Error opening in Cursor:', error);
			new Notice(`Failed to open in Cursor: ${error.message}`);
		}
	}
}

class SwitchToCursorSettingTab extends PluginSettingTab {
	plugin: SwitchToCursorPlugin;

	constructor(app: App, plugin: SwitchToCursorPlugin) {
		super(app, plugin);
		this.plugin = plugin;
	}

	display(): void {
		const {containerEl} = this;

		containerEl.empty();

		new Setting(containerEl)
			.setName('Cursor executable path')
			.setDesc('Path to Cursor executable (auto-detected if empty)')
			.addText(text => text
				.setPlaceholder('Auto-detected')
				.setValue(this.plugin.settings.cursorPath)
				.onChange(async (value) => {
					this.plugin.settings.cursorPath = value;
					await this.plugin.saveSettings();
				}));

		new Setting(containerEl)
			.setName('Workspace path')
			.setDesc('Default workspace path for Cursor (uses vault path if empty)')
			.addText(text => text
				.setPlaceholder('Vault path')
				.setValue(this.plugin.settings.workspacePath)
				.onChange(async (value) => {
					this.plugin.settings.workspacePath = value;
					await this.plugin.saveSettings();
				}));

		new Setting(containerEl)
			.setName('Test connection')
			.setDesc('Test if Cursor can be opened with current settings')
			.addButton(button => button
				.setButtonText('Test')
				.onClick(async () => {
					try {
						const cursorPath = this.plugin.settings.cursorPath || 'cursor';
						await execAsync(`"${cursorPath}" --version`);
						new Notice('Cursor connection test successful!');
					} catch (error) {
						new Notice(`Cursor connection test failed: ${error.message}`);
					}
				}));
	}
}
