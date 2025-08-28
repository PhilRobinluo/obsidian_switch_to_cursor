# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned Features
- Bidirectional sync: Open Obsidian from Cursor
- Git integration: Link commits to notes
- Code snippet embedding: Live code in notes
- Multi-file selection: Open multiple files at once
- VS Code support: Extension to other editors
- Custom commands: User-defined actions
- Project templates: Quick project setup

## [1.0.0] - 2024-08-28

### Added
- 🎉 **Initial release** - First stable version of Obsidian to Cursor Bridge
- 🎯 **One-click file switching** - Open current Obsidian file in Cursor instantly
- 📍 **Smart cursor position sync** - Jump to specific lines with "Open in Cursor with current line" command
- 🔧 **Auto path detection** - Automatically detects Cursor installation across platforms
- 🗂️ **Intelligent workspace management** - Configurable workspace paths for different projects
- 🌍 **Cross-platform support** - Works on Windows, macOS, and Linux
- 🎮 **Multiple access methods**:
  - Command palette integration
  - Toolbar icon (external link)
  - Customizable hotkeys
- ⚙️ **Configuration options**:
  - Cursor executable path (auto-detected)
  - Workspace path (defaults to vault path)
  - Connection testing functionality
- 📖 **Comprehensive documentation**:
  - Detailed README with installation guide
  - Complete usage guide with real-world scenarios
  - Troubleshooting section
  - Contributing guidelines
- 🔒 **Security & Quality**:
  - TypeScript implementation
  - Proper error handling
  - No external dependencies
  - MIT License
- 🚀 **Development Tools**:
  - GitHub Actions CI/CD
  - Automated release workflow
  - Issue templates
  - Release script

### Technical Details
- **Plugin ID**: `obsidian-switch-to-cursor`
- **Minimum Obsidian Version**: 0.15.0
- **Desktop Only**: Yes (requires system-level editor access)
- **File Size**: ~6KB (minified)
- **Dependencies**: None (uses only Obsidian API and Node.js built-ins)

### Platform Support
- **macOS**: ✅ Auto-detects `/Applications/Cursor.app/Contents/MacOS/Cursor`
- **Windows**: ✅ Auto-detects common installation paths
- **Linux**: ✅ Supports package manager and manual installations

### Commands Added
1. **"Open current file in Cursor"** - Opens the currently active file
2. **"Open in Cursor with current line"** - Opens file and jumps to cursor position

### Settings Added
1. **Cursor Executable Path** - Path to Cursor application (auto-detected)
2. **Workspace Path** - Root directory for Cursor workspace (optional)
3. **Test Connection** - Button to verify Cursor setup

---

## Version History Summary

| Version | Date | Key Features |
|---------|------|--------------|
| 1.0.0 | 2024-08-28 | Initial release with core functionality |

---

## Development Notes

### Version 1.0.0 Development
- **Development Time**: ~2 weeks
- **Lines of Code**: ~300 (TypeScript)
- **Testing Platforms**: macOS, Windows 11, Ubuntu 22.04
- **Beta Testers**: Internal testing team
- **Code Quality**: TypeScript strict mode, comprehensive error handling

### Known Limitations in v1.0.0
- Unidirectional sync only (Obsidian → Cursor)
- Single file opening (no multi-select)
- Requires Cursor to be pre-installed
- Desktop platforms only

### Feedback Collection
- GitHub Issues for bug reports
- GitHub Discussions for feature requests
- Community feedback through Obsidian forums
- User surveys for usage patterns

---

## Migration Guide

### From Manual Workflow
If you were previously switching between Obsidian and Cursor manually:

1. Install the plugin
2. Configure Cursor path (usually auto-detected)
3. Start using commands or toolbar icon
4. Set up hotkeys for faster workflow

### Future Migration Notes
Future versions will maintain backward compatibility with v1.0.0 configurations.

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for information on how to contribute to this project.

## Support

- 📖 **Documentation**: [README.md](README.md) and [USAGE.md](USAGE.md)
- 🐛 **Bug Reports**: [GitHub Issues](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/issues)
- 💡 **Feature Requests**: [GitHub Discussions](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/discussions)
- 💬 **Community**: [Obsidian Discord](https://discord.gg/obsidianmd) #plugin-dev channel

---

**Note**: This changelog follows the [Keep a Changelog](https://keepachangelog.com/) format and will be updated with each release.
