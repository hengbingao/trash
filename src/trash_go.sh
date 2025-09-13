#!/usr/bin/env bash

# 垃圾目录
trash_dir="$MYGROUP/trash"

# 确保垃圾目录存在
mkdir -p "$trash_dir"

# 检查是否有文件参数
if [[ $# -eq 0 ]]; then
    echo "Error: No files specified to move."
    exit 1
fi

# 循环处理每个文件
for file in "$@"; do
    if [[ -e "$file" ]]; then
        # 使用 rsync + 删除原文件的方式，避免 NFS ACL 报错
        rsync -a --remove-source-files --no-perms --no-acl "$file" "$trash_dir"/ 2>/dev/null
        # 如果文件还存在，尝试直接移动（兼容普通文件系统）
        if [[ -e "$file" ]]; then
            mv -f "$file" "$trash_dir"/ 2>/dev/null
        fi
        echo "Moved $file to $trash_dir"
    else
        echo "Warning: File not found: $file"
    fi
done
