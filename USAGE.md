# 📖 Obsidian to Cursor Bridge - Complete Usage Guide

> Comprehensive guide for getting the most out of your Obsidian to Cursor workflow

## 🎯 Overview | 概览

This plugin bridges the gap between note-taking in Obsidian and code editing in Cursor, providing seamless file switching with intelligent cursor position synchronization.

## 🚀 Getting Started | 快速开始

### First Time Setup | 首次设置

1. **Install and Enable Plugin | 安装并启用插件**
   - From Obsidian Community Plugins or manual installation
   - Enable in Settings → Community Plugins

2. **Verify Cursor Installation | 验证 Cursor 安装**
   - Plugin auto-detects Cursor path
   - Test connection in plugin settings

3. **Optional Configuration | 可选配置**
   - Customize workspace path if needed
   - Set up hotkeys for faster access

## 🎮 Three Ways to Use | 三种使用方式

### 1️⃣ Command Palette Method | 命令面板方式

#### Basic File Opening | 基本文件打开

```
Steps | 步骤:
1. Open any Markdown file in Obsidian | 在 Obsidian 中打开任意 Markdown 文件
2. Press Cmd+P (Mac) or Ctrl+P (Windows/Linux) | 按快捷键打开命令面板
3. Type "open cursor" | 输入 "open cursor"
4. Select "Open current file in Cursor" | 选择 "Open current file in Cursor"
5. 🎉 File opens in Cursor with workspace context | 文件在 Cursor 中打开，包含工作区上下文
```

**💡 Pro Tip**: You only need to type "oc" for quick access!

#### Advanced: Line-Specific Opening | 高级：指定行打开

```
Use Case | 使用场景:
📝 Your note mentions: "Check line 42 in auth.js for the bug"
🎯 You want to jump directly to line 42

Steps | 步骤:
1. Position cursor at line 42 in your Obsidian note | 在 Obsidian 笔记中将光标定位到第42行
2. Cmd+P → "Open in Cursor with current line" | 使用命令面板选择带行号的命令
3. 🚀 Cursor opens the file and jumps to line 42 | Cursor 打开文件并跳转到第42行
```

### 2️⃣ Toolbar Icon Method | 工具栏图标方式

#### One-Click Access | 一键访问

```
Location | 位置: Left sidebar toolbar in Obsidian | Obsidian 左侧工具栏
Icon | 图标: External link icon 🔗
Action | 操作: Single click opens current file in Cursor | 单击打开当前文件
```

**🎯 Perfect for**: Quick switches during active coding sessions | 适合编码过程中的快速切换

### 3️⃣ Custom Hotkeys Method | 自定义快捷键方式

#### Setup Process | 设置过程

1. **Navigate to Hotkeys | 进入快捷键设置**
   ```
   Settings → Hotkeys → Search "cursor"
   设置 → 快捷键 → 搜索 "cursor"
   ```

2. **Recommended Assignments | 推荐快捷键分配**
   ```
   Cmd+Shift+C (Mac) / Ctrl+Shift+C (Win) → "Open current file in Cursor"
   Cmd+Shift+L (Mac) / Ctrl+Shift+L (Win) → "Open in Cursor with current line"
   ```

3. **Usage | 使用**
   ```
   Simply press your assigned keys for instant switching
   直接按设置的快捷键即可瞬间切换
   ```

## 🎯 Advanced Usage Scenarios | 高级使用场景

### 📝 Scenario 1: Documentation Workflow | 文档工作流

```
Workflow | 工作流程:
1. 📖 Write technical documentation in Obsidian
   在 Obsidian 中编写技术文档

2. 🔗 Reference specific code files and functions
   引用特定代码文件和函数

3. 🚀 Use plugin to instantly jump to referenced code
   使用插件瞬间跳转到引用的代码

4. ✏️ Edit code in Cursor with full IDE features
   在 Cursor 中使用完整 IDE 功能编辑代码

5. 📝 Return to Obsidian to update documentation
   返回 Obsidian 更新文档
```

**Example Note Structure | 示例笔记结构:**
```markdown
# Feature Implementation Notes

## Authentication Module
- File: `src/auth/login.js`
- Issue: Password validation on line 89 needs improvement
- TODO: Implement 2FA on line 156

[Jump to file with Cmd+P → Open in Cursor]
```

### 🐛 Scenario 2: Bug Tracking & Fixing | Bug 跟踪和修复

```
Bug Report Format | Bug 报告格式:
📋 In Obsidian:
- Bug description
- Affected file and line number
- Steps to reproduce
- Proposed solution

🔧 Action:
- Position cursor on the problematic line number
- Use "Open in Cursor with current line"
- Fix directly at the exact location
```

**Example Bug Note | 示例 Bug 笔记:**
```markdown
# Bug #001: Login Timeout Issue

## Details
- File: `backend/auth/session.js`
- Line: 127
- Issue: Session timeout not properly handled
- Priority: High

## Fix
1. Check line 127 ← [Position cursor here and use Cmd+Shift+L]
2. Implement proper timeout handling
3. Add error logging
```

### 📚 Scenario 3: Learning & Code Review | 学习和代码审查

```
Study Workflow | 学习工作流程:
1. 📚 Take notes about code concepts in Obsidian
   在 Obsidian 中记录代码概念笔记

2. 🔗 Link to actual implementation examples
   链接到实际实现示例

3. 🔍 Use plugin to examine code in detail
   使用插件详细检查代码

4. 📝 Add insights and understanding back to notes
   将见解和理解添加回笔记
```

### 🏗️ Scenario 4: Project Planning | 项目规划

```
Planning Structure | 规划结构:
📁 Project Folder in Obsidian:
├── 📄 Requirements.md
├── 📄 Architecture.md
├── 📄 Implementation-Tasks.md
└── 📄 Code-References.md

Each file contains direct links to relevant code files
每个文件包含相关代码文件的直接链接
```

## ⚙️ Advanced Configuration | 高级配置

### Custom Workspace Setups | 自定义工作区设置

#### Multi-Project Workflow | 多项目工作流

```
Setup | 设置:
1. Create project-specific Obsidian vaults
   创建特定项目的 Obsidian vault

2. Configure workspace path for each project
   为每个项目配置工作区路径

3. Use different Cursor workspaces per project
   每个项目使用不同的 Cursor 工作区
```

#### Custom Path Configuration | 自定义路径配置

```
Use Cases | 使用场景:
- Code repository outside of Obsidian vault
  代码仓库在 Obsidian vault 外部

- Multiple related projects
  多个相关项目

- Monorepo structures
  单一仓库结构

Configuration | 配置:
Settings → Workspace Path → Set to your project root
设置 → 工作区路径 → 设置为项目根目录
```

## 🎨 Workflow Optimization Tips | 工作流优化技巧

### 📋 1. Note Templates | 笔记模板

Create templates for common scenarios:

```markdown
# Code Review Template
## File: {{file-path}}
## Lines: {{line-range}}
## Status: [ ] To Review / [ ] In Progress / [ ] Completed

[Open in Cursor: Cmd+P → Open in Cursor]
```

### 🏷️ 2. Tagging System | 标签系统

```
Suggested Tags | 建议标签:
#code-review    - For code review notes
#bug-report     - For bug tracking
#feature-impl   - For feature implementation
#refactor       - For refactoring tasks
#documentation  - For code documentation
```

### 🔗 3. Linking Strategy | 链接策略

```
Link Types | 链接类型:
[[filename.js]] - Direct file reference
[[filename.js#function-name]] - Specific function
[[filename.js:42]] - Specific line (note format)
```

### ⏱️ 4. Time-Saving Shortcuts | 省时快捷方式

```
Quick Actions | 快速操作:
- Type "oc" in command palette for "Open in Cursor"
  在命令面板中输入 "oc" 表示 "Open in Cursor"

- Set up workspace-specific hotkeys
  设置工作区特定的快捷键

- Use toolbar icon for mouse-driven workflows
  在鼠标驱动的工作流中使用工具栏图标
```

## 🔧 Troubleshooting Guide | 故障排除指南

### Issue Resolution Matrix | 问题解决矩阵

| Problem | Symptom | Solution |
|---------|---------|----------|
| Plugin not visible | Missing from command palette | Check if enabled in Community Plugins |
| Cursor won't open | "Failed to open" error | Verify Cursor path in settings |
| Wrong workspace | Opens in wrong directory | Configure workspace path |
| No cursor sync | Opens but wrong line | Check file encoding and line endings |

### Step-by-Step Diagnostics | 逐步诊断

#### 🔍 1. Basic Connectivity Test | 基本连接测试

```bash
# Terminal test | 终端测试
cursor --version

# Expected output: Cursor version information
# 预期输出：Cursor 版本信息
```

#### 🔍 2. Plugin Settings Verification | 插件设置验证

```
Checklist | 检查清单:
✅ Plugin enabled in Community Plugins
✅ Cursor path correctly detected
✅ Workspace path configured (or empty for default)
✅ Test connection shows success
```

#### 🔍 3. File-Specific Issues | 文件特定问题

```
Common Causes | 常见原因:
- File not saved in Obsidian
- Special characters in file path
- File outside of workspace scope
- Permission issues
```

## 🎓 Best Practices | 最佳实践

### 📝 1. Note Organization | 笔记组织

```
Recommended Structure | 推荐结构:
Project/
├── 📁 Planning/
│   ├── requirements.md
│   └── architecture.md
├── 📁 Development/
│   ├── daily-notes/
│   └── code-reviews/
├── 📁 Issues/
│   ├── bugs/
│   └── features/
└── 📁 Documentation/
    ├── api-docs/
    └── guides/
```

### 🔄 2. Sync Workflow | 同步工作流

```
Daily Routine | 日常流程:
1. 🌅 Morning: Review yesterday's notes in Obsidian
2. 💻 Work: Switch between notes and code using plugin
3. 📝 Throughout: Update notes with insights and changes
4. 🌙 Evening: Review and organize notes for tomorrow
```

### 🎯 3. Productivity Hacks | 生产力技巧

```
Power User Tips | 高级用户技巧:
- Keep Obsidian and Cursor on different desktops/screens
  将 Obsidian 和 Cursor 放在不同的桌面/屏幕上

- Use Obsidian's graph view to visualize code relationships
  使用 Obsidian 的图谱视图可视化代码关系

- Create daily notes with code-review checklists
  创建包含代码审查检查清单的日常笔记

- Link meeting notes to relevant code sections
  将会议笔记链接到相关代码部分
```

## 🚀 Future Enhancements | 未来增强

### Planned Features | 计划功能

- [ ] **Bidirectional sync**: Open Obsidian from Cursor | 双向同步
- [ ] **Git integration**: Link commits to notes | Git 集成
- [ ] **Code snippet embedding**: Live code in notes | 代码片段嵌入
- [ ] **Multi-file selection**: Open multiple files at once | 多文件选择

### Community Requests | 社区请求

- [ ] **VS Code support**: Extension to other editors | VS Code 支持
- [ ] **Custom commands**: User-defined actions | 自定义命令
- [ ] **Project templates**: Quick project setup | 项目模板

---

<div align="center">

**Ready to supercharge your workflow? 🚀**

[⭐ Star the project](https://github.com/PhilRobinluo/obsidian_switch_to_cursor) | [💬 Join discussions](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/discussions) | [📝 Share your workflow](https://github.com/PhilRobinluo/obsidian_switch_to_cursor/discussions/categories/show-and-tell)

</div>
