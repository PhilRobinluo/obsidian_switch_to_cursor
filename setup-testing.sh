#!/bin/bash

# Obsidian to Cursor Bridge - 测试安装脚本

echo "🚀 Obsidian to Cursor Bridge 测试安装脚本"
echo "==========================================="

# 检查是否有 Obsidian vault 路径参数
if [ -z "$1" ]; then
    echo "❌ 请提供 Obsidian vault 路径作为参数"
    echo "用法: ./setup-testing.sh /path/to/your/obsidian-vault"
    echo ""
    echo "示例:"
    echo "  ./setup-testing.sh ~/Documents/MyVault"
    echo "  ./setup-testing.sh \"/Users/username/Obsidian Vault\""
    exit 1
fi

VAULT_PATH="$1"
PLUGIN_DIR="$VAULT_PATH/.obsidian/plugins/obsidian-switch-to-cursor"
CURRENT_DIR="$(pwd)"

echo "📂 Vault 路径: $VAULT_PATH"
echo "📦 插件目录: $PLUGIN_DIR"

# 检查 vault 路径是否存在
if [ ! -d "$VAULT_PATH" ]; then
    echo "❌ Vault 路径不存在: $VAULT_PATH"
    exit 1
fi

# 创建插件目录
echo "📁 创建插件目录..."
mkdir -p "$PLUGIN_DIR"

# 复制必要文件
echo "📋 复制插件文件..."
cp "$CURRENT_DIR/main.js" "$PLUGIN_DIR/"
cp "$CURRENT_DIR/manifest.json" "$PLUGIN_DIR/"
cp "$CURRENT_DIR/styles.css" "$PLUGIN_DIR/"

# 检查文件是否复制成功
if [ -f "$PLUGIN_DIR/main.js" ] && [ -f "$PLUGIN_DIR/manifest.json" ]; then
    echo "✅ 插件文件复制成功！"
    echo ""
    echo "📋 下一步:"
    echo "1. 打开 Obsidian"
    echo "2. 进入 设置 → 第三方插件"
    echo "3. 关闭 '安全模式'"
    echo "4. 找到 'Obsidian to Cursor Bridge' 并启用"
    echo ""
    echo "🧪 测试功能:"
    echo "- 打开一个 Markdown 文件"
    echo "- 使用命令面板 (Cmd+P) 搜索 'Open in Cursor'"
    echo "- 或点击左侧工具栏的外部链接图标"
    echo ""
    echo "🔧 如果遇到问题，查看 TESTING.md 获取详细说明"
else
    echo "❌ 插件文件复制失败"
    exit 1
fi
