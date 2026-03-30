#!/bin/bash
# OpenClaw 摘要记忆系统一键安装

echo "📦 OpenClaw 摘要记忆系统安装"

if [ ! -f ~/.openclaw/workspace/AGENTS.md ]; then
    echo "❌ 未找到 OpenClaw 配置"
    exit 1
fi

cp ~/.openclaw/workspace/AGENTS.md ~/.openclaw/workspace/AGENTS.md.bak
echo "✅ 已备份原配置"

echo ""
echo "请输入摘要存储路径（WSL 格式）"
echo "例如：/mnt/d/小翎专属/聊天记录/摘要/"
read -p "路径 [默认: /mnt/d/小翎专属/聊天记录/摘要/]: " DIR
DIR=${DIR:-"/mnt/d/小翎专属/聊天记录/摘要/"}

mkdir -p "$DIR"
echo "✅ 已创建目录: $DIR"

echo ""
echo "✅ 安装完成！"
echo ""
echo "下一步："
echo "1. 打开 ~/.openclaw/workspace/AGENTS.md"
echo "2. 将 templates/AGENTS.md 的内容追加到文件末尾"
echo "3. 修改文件中的路径为: $DIR"
echo "4. 运行: pkill -f openclaw && openclaw"
