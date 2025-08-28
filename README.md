# Obsidian to Cursor Bridge

> 🚀 A powerful plugin that provides seamless switching between Obsidian and Cursor editor with smart cursor position synchronization.

一个用于在 Obsidian 和 Cursor 编辑器之间无缝切换的插件，支持智能光标位置同步。

[![GitHub release](https://img.shields.io/github/release/PhilRobinluo/obsidian_switch_to_cursor.svg)](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/releases)
[![License](https://img.shields.io/github/license/PhilRobinluo/obsidian_switch_to_cursor.svg)](LICENSE)

## ✨ Features | 功能特点

- 🎯 **One-click file switching** | 一键文件切换
- 📍 **Smart cursor position sync** | 智能光标位置同步  
- 🔧 **Auto path detection** | 自动路径检测
- 🗂️ **Intelligent workspace management** | 智能工作区管理
- 🌍 **Cross-platform support** | 跨平台支持 (Windows, macOS, Linux)
- ⚡ **Multiple access methods** | 多种访问方式 (Command palette, toolbar, hotkeys)

## 🚀 Quick Start | 快速开始

### Installation | 安装

#### Method 1: From Obsidian Community Plugins | 从社区插件安装 (推荐)

1. Open Obsidian Settings | 打开 Obsidian 设置
2. Navigate to **Community Plugins** | 进入**第三方插件**
3. Turn off **Safe Mode** | 关闭**安全模式**
4. Click **Browse** and search for "**Obsidian to Cursor Bridge**" | 点击**浏览**搜索插件
5. Click **Install** and **Enable** | 点击**安装**并**启用**

#### Method 2: Manual Installation | 手动安装

1. Download the latest release from [GitHub Releases](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/releases)
2. Extract to `{VaultFolder}/.obsidian/plugins/obsidian-switch-to-cursor/`
3. Reload Obsidian and enable the plugin

## 📖 Usage Guide | 使用指南

### 🎮 Method 1: Command Palette | 命令面板（最常用）

#### Open Current File | 打开当前文件
1. Open any `.md` file in Obsidian | 在 Obsidian 中打开任意 `.md` 文件
2. Press `Cmd+P` (Mac) or `Ctrl+P` (Windows/Linux) | 按快捷键打开命令面板
3. Type "**open cursor**" or "**open in cursor**" | 输入搜索关键词
4. Select "**Open current file in Cursor**" | 选择命令
5. 🎉 File opens in Cursor instantly | 文件立即在 Cursor 中打开

#### Jump to Specific Line | 跳转到指定行
1. Position cursor on desired line in Obsidian | 在 Obsidian 中定位光标到目标行
2. Press `Cmd+P` and select "**Open in Cursor with current line**" | 使用命令面板选择带行号的命令
3. 🎯 Cursor opens file and jumps to exact line | Cursor 打开文件并跳转到精确行号

### 🔗 Method 2: Toolbar Icon | 侧边栏图标（一键操作）

- Click the **external link icon** 🔗 in the left toolbar | 点击左侧工具栏的外部链接图标
- Current file opens in Cursor immediately | 当前文件立即在 Cursor 中打开

### ⌨️ Method 3: Custom Hotkeys | 自定义快捷键（最高效）

#### Setup Hotkeys | 设置快捷键:
1. Go to **Settings** → **Hotkeys** | 进入**设置** → **快捷键**
2. Search for "**cursor**" | 搜索关键词
3. Assign keys to commands: | 为命令分配快捷键：
   - `Cmd+Shift+C` → "Open current file in Cursor"
   - `Cmd+Shift+L` → "Open in Cursor with current line"

#### Use Hotkeys | 使用快捷键:
- Press your assigned hotkeys for instant switching | 直接按设置的快捷键即可

## ⚙️ Configuration | 配置

### Plugin Settings | 插件设置

Access via: **Settings** → **Community Plugins** → **Obsidian to Cursor Bridge** → **Options**

#### 🔧 Available Options | 可用选项:

| Setting | Description | Default |
|---------|-------------|---------|
| **Cursor Executable Path** | Path to Cursor application | Auto-detected |
| **Workspace Path** | Root directory for Cursor workspace | Current vault path |
| **Test Connection** | Verify Cursor setup | Button to test |

### Auto-Detection Paths | 自动检测路径

The plugin automatically detects Cursor installation on different platforms:

- **macOS**: `/Applications/Cursor.app/Contents/MacOS/Cursor`
- **Windows**: `C:\Users\{username}\AppData\Local\Programs\cursor\Cursor.exe`
- **Linux**: `/usr/bin/cursor`, `/usr/local/bin/cursor`, `/snap/bin/cursor`

## 🎯 Real-World Use Cases | 实际使用场景

### 📝 Scenario 1: Note-taking to Code Editing | 笔记记录到代码编辑
```
📝 Writing project documentation in Obsidian
💡 Need to quickly edit the mentioned code file
🎯 Cmd+P → "Open in Cursor" → Edit immediately
```

### 🐛 Scenario 2: Bug Tracking Workflow | Bug 追踪工作流
```
📝 Document bug details in Obsidian: "Line 42 has an issue"
💡 Want to jump directly to line 42
🎯 Position cursor on line 42 → Use "Open with current line"
```

### 📚 Scenario 3: Documentation and Code Sync | 文档代码同步
```
📝 Technical writing in Obsidian
🔗 Quick verification of code examples
💻 Seamless switching between documentation and implementation
```

## 🛠️ Development | 开发

### Prerequisites | 环境要求

- Node.js 16+ 
- npm or yarn
- Obsidian (for testing)
- Cursor editor

### Setup | 环境设置

```bash
# Clone repository | 克隆仓库
git clone https://github.com/PhilRobinluo/obsidian_switch_to_cursor.git
cd obsidian_switch_to_cursor

# Install dependencies | 安装依赖
npm install

# Development mode (watch mode) | 开发模式（监听变化）
npm run dev

# Production build | 生产构建
npm run build

# Version bump | 版本更新
npm run version
```

### Project Structure | 项目结构

```
obsidian-switch-to-cursor/
├── main.ts              # Main plugin file | 主插件文件
├── manifest.json        # Plugin manifest | 插件清单
├── package.json         # NPM configuration | NPM 配置
├── tsconfig.json        # TypeScript config | TypeScript 配置
├── esbuild.config.mjs   # Build configuration | 构建配置
├── styles.css           # Plugin styles | 插件样式
├── version-bump.mjs     # Version management | 版本管理
└── versions.json        # Compatibility matrix | 兼容性矩阵
```

## 🔧 Troubleshooting | 故障排除

### Common Issues | 常见问题

<details>
<summary><strong>❌ "Failed to open in Cursor" Error</strong></summary>

**Solutions | 解决方案:**
- Verify Cursor is properly installed | 验证 Cursor 正确安装
- Check Cursor executable path in settings | 检查设置中的 Cursor 路径
- Use "Test Connection" button in plugin settings | 使用插件设置中的测试连接功能
- Ensure Cursor command-line tools are available | 确保 Cursor 命令行工具可用

**Test manually | 手动测试:**
```bash
# Test if Cursor is accessible
cursor --version

# Test opening a file
cursor /path/to/test/file.md
```
</details>

<details>
<summary><strong>🔍 Cursor Path Not Auto-Detected</strong></summary>

**Manual Configuration | 手动配置:**
- **macOS**: `/Applications/Cursor.app/Contents/MacOS/Cursor`
- **Windows**: `C:\Users\{username}\AppData\Local\Programs\cursor\Cursor.exe`  
- **Linux**: `/usr/bin/cursor` or `/usr/local/bin/cursor`

**Verification | 验证:**
Use the "Test" button in plugin settings to verify the path.
</details>

<details>
<summary><strong>📁 Workspace Path Issues</strong></summary>

**Solutions | 解决方案:**
- Leave workspace path empty to use vault path | 留空使用 vault 路径
- Set custom path for projects outside vault | 为 vault 外的项目设置自定义路径
- Ensure the path exists and is accessible | 确保路径存在且可访问
</details>

### Debug Mode | 调试模式

1. Open Developer Console: `Cmd+Opt+I` (Mac) or `Ctrl+Shift+I` (Windows/Linux)
2. Check Console tab for error messages
3. Enable plugin debug logging in Obsidian settings

## 🤝 Contributing | 贡献

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Ways to Contribute | 贡献方式
- 🐛 Report bugs | 报告错误
- 💡 Suggest features | 建议功能
- 📖 Improve documentation | 改进文档
- 🔧 Submit pull requests | 提交拉取请求

## 📄 License | 许可证

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments | 致谢

- Thanks to the Obsidian community for inspiration
- Cursor team for building an amazing editor
- All contributors and users of this plugin

## 📈 Changelog | 更新日志

### [1.0.0] - 2024-01-XX
- 🎉 Initial release | 初始版本发布
- ✅ Basic file opening functionality | 基本文件打开功能
- 🔍 Auto-detection of Cursor path | Cursor 路径自动检测
- 📍 Cursor position synchronization | 光标位置同步
- 🌍 Cross-platform support | 跨平台支持
- 🎮 Multiple access methods | 多种访问方式

---

<div align="center">

**[⭐ Star this repo](https://github.com/PhilRobinluo/obsidian_switch_to_cursor) | [🐛 Report Bug](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/issues) | [💡 Request Feature](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/issues)**

Made with ❤️ for the Obsidian community

</div>