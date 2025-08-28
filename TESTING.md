# 测试指南

## 项目设置完成

✅ 项目已成功重新部署在你的电脑上  
✅ 依赖项已安装  
✅ 项目已构建成功  
✅ 生成了 `main.js` 文件

## 在 Obsidian 中测试插件

### 方法 1: 直接复制到 Obsidian 插件目录

1. **找到你的 Obsidian Vault 目录**
   ```bash
   # 示例路径（需要替换为你的实际路径）
   cd "/path/to/your/obsidian-vault/.obsidian/plugins"
   ```

2. **创建插件目录**
   ```bash
   mkdir obsidian-switch-to-cursor
   cd obsidian-switch-to-cursor
   ```

3. **复制必要文件**
   ```bash
   # 从当前项目复制到 Obsidian 插件目录
   cp /Users/qihang/open_source/switch2cursor/main.js ./
   cp /Users/qihang/open_source/switch2cursor/manifest.json ./
   cp /Users/qihang/open_source/switch2cursor/styles.css ./
   ```

4. **在 Obsidian 中启用插件**
   - 打开 Obsidian
   - 进入 设置 → 第三方插件
   - 关闭"安全模式"
   - 在已安装插件列表中找到 "Obsidian to Cursor Bridge"
   - 启用插件

### 方法 2: 使用开发模式（推荐用于测试）

1. **创建符号链接（推荐）**
   ```bash
   # 替换为你的实际 Obsidian Vault 路径
   ln -s /Users/qihang/open_source/switch2cursor "/path/to/your/obsidian-vault/.obsidian/plugins/obsidian-switch-to-cursor"
   ```

2. **或者直接在 Obsidian 插件目录中开发**
   ```bash
   # 移动整个项目到 Obsidian 插件目录
   mv /Users/qihang/open_source/switch2cursor "/path/to/your/obsidian-vault/.obsidian/plugins/obsidian-switch-to-cursor"
   ```

## 测试功能

### 1. 基本功能测试

1. **打开一个 Markdown 文件**
2. **使用命令面板** (`Cmd+P`)
   - 搜索 "Open in Cursor"
   - 测试 "Open current file in Cursor"
   - 测试 "Open in Cursor with current line"

3. **使用侧边栏图标**
   - 点击左侧工具栏的外部链接图标

4. **使用快捷键**（如果设置了）
   - 默认: `Ctrl+Alt+C`

### 2. 配置测试

1. **打开插件设置**
   - 设置 → 第三方插件 → Obsidian to Cursor Bridge → 设置

2. **测试自动检测**
   - 检查 "Cursor executable path" 是否自动填充
   - 如果没有，手动设置正确路径

3. **测试连接**
   - 点击 "Test" 按钮
   - 确认连接成功

### 3. Cursor 路径配置

根据你的系统，Cursor 可能安装在以下位置：

**macOS:**
```bash
/Applications/Cursor.app/Contents/MacOS/Cursor
```

**验证 Cursor 安装:**
```bash
# 检查 Cursor 是否在 PATH 中
which cursor

# 或者测试命令行
cursor --version
```

## 开发模式

如果你需要继续开发和修改插件：

1. **启动开发模式**
   ```bash
   cd /Users/qihang/open_source/switch2cursor
   npm run dev
   ```

2. **修改代码后**
   - 保存文件会自动重新构建
   - 在 Obsidian 中使用 `Cmd+R` 重新加载插件

## 故障排除

### 常见问题

1. **插件未出现在列表中**
   - 检查文件是否正确复制
   - 确认 `manifest.json` 格式正确
   - 重启 Obsidian

2. **"Failed to open in Cursor" 错误**
   - 检查 Cursor 是否正确安装
   - 验证 Cursor 路径设置
   - 确认 Cursor 命令行工具可用

3. **权限错误**
   ```bash
   # 确保文件有正确权限
   chmod +x /Applications/Cursor.app/Contents/MacOS/Cursor
   ```

### 调试

1. **查看控制台日志**
   - 在 Obsidian 中按 `Cmd+Opt+I` 打开开发者工具
   - 查看 Console 选项卡的错误信息

2. **测试 Cursor 命令**
   ```bash
   # 测试基本命令
   cursor --version
   
   # 测试打开文件
   cursor /path/to/test/file.md
   
   # 测试跳转到行
   cursor --goto /path/to/test/file.md:10
   ```

## 项目文件说明

- `main.js` - 编译后的插件代码（必需）
- `manifest.json` - 插件清单文件（必需）
- `styles.css` - 插件样式文件（必需）
- `main.ts` - 源代码文件
- `package.json` - NPM 配置
- `tsconfig.json` - TypeScript 配置
- `esbuild.config.mjs` - 构建配置

## 下一步

现在你可以：

1. 📁 将插件安装到 Obsidian 中进行测试
2. 🔧 修改源代码以添加新功能
3. 🐛 报告或修复发现的问题
4. 📝 改进文档和用户体验

**准备好测试了！** 🚀
