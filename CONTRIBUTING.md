# Contributing to Obsidian to Cursor Bridge

Thank you for your interest in contributing to Obsidian to Cursor Bridge! 🎉

## 🤝 Ways to Contribute

### 🐛 Bug Reports
- Use the [Bug Report Template](.github/ISSUE_TEMPLATE/bug_report.md)
- Include steps to reproduce
- Specify your OS and software versions
- Attach screenshots if applicable

### 💡 Feature Requests
- Use the [Feature Request Template](.github/ISSUE_TEMPLATE/feature_request.md)
- Describe the use case clearly
- Explain why this feature would be valuable

### 📖 Documentation
- Fix typos and improve clarity
- Add usage examples
- Translate documentation
- Create video tutorials

### 💻 Code Contributions
- Bug fixes
- New features
- Performance improvements
- Code refactoring

## 🚀 Development Setup

### Prerequisites
- Node.js 16+
- npm or yarn
- Git
- Obsidian (for testing)
- Cursor editor

### Local Development

1. **Fork and clone**
   ```bash
   git clone https://github.com/YOUR_USERNAME/obsidian_switch_to_cursor.git
   cd obsidian_switch_to_cursor
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Development mode**
   ```bash
   npm run dev
   ```

4. **Build for testing**
   ```bash
   npm run build
   ```

5. **Test in Obsidian**
   ```bash
   # Copy built files to your Obsidian plugins directory
   cp main.js manifest.json styles.css /path/to/vault/.obsidian/plugins/obsidian-switch-to-cursor/
   ```

## 📝 Code Style

### TypeScript Guidelines
- Use TypeScript for all source code
- Follow existing code style and patterns
- Add JSDoc comments for public APIs
- Use meaningful variable and function names

### File Organization
```
src/
├── main.ts              # Main plugin file
├── settings.ts          # Settings management
├── utils.ts             # Utility functions
└── types.ts             # Type definitions
```

### Commit Messages
Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add support for custom workspace paths
fix: resolve cursor position sync issue
docs: update installation instructions
style: format code with prettier
refactor: simplify path detection logic
test: add unit tests for path resolution
```

## 🧪 Testing

### Manual Testing Checklist
- [ ] Plugin installs correctly
- [ ] All commands work from command palette
- [ ] Toolbar icon functions properly
- [ ] Settings page loads and saves correctly
- [ ] Cursor opens with correct file and position
- [ ] Works across different operating systems

### Automated Testing
```bash
# Run linting
npm run lint

# Run type checking
npm run type-check

# Run all checks
npm run test
```

## 📋 Pull Request Process

### Before Submitting
1. **Test thoroughly** on your target platform
2. **Update documentation** if needed
3. **Add/update tests** for new functionality
4. **Run linting** and fix any issues
5. **Update CHANGELOG.md** if applicable

### PR Template
- [ ] Clear description of changes
- [ ] Link to related issues
- [ ] Screenshots/GIFs for UI changes
- [ ] Testing instructions
- [ ] Breaking changes documented

### Review Process
1. **Automated checks** must pass
2. **Code review** by maintainers
3. **Testing** on multiple platforms
4. **Documentation review**
5. **Approval and merge**

## 🏷️ Release Process

### Version Numbering
We follow [Semantic Versioning](https://semver.org/):
- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

### Release Checklist
- [ ] Update version in `package.json`
- [ ] Update `manifest.json` version
- [ ] Update `versions.json` compatibility
- [ ] Update CHANGELOG.md
- [ ] Create GitHub release
- [ ] Submit to Obsidian community plugins (if applicable)

## 🌍 Internationalization

### Adding Translations
1. Create language file: `locales/{lang}.json`
2. Translate all strings
3. Update locale loader
4. Test with language settings

### Supported Languages
- English (en)
- 中文 (zh-CN) - Contributions welcome!
- More languages welcome!

## 🤔 Questions?

- **Documentation**: Check README.md and USAGE.md first
- **Issues**: Search existing issues before creating new ones
- **Discussions**: Use GitHub Discussions for questions
- **Email**: Contact maintainers for security issues

## 🎖️ Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md
- Mentioned in release notes
- Added to GitHub contributors page
- Credited in documentation

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for making Obsidian to Cursor Bridge better! 🚀
