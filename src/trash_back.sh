#!/usr/bin/env bash

# 垃圾目录
trash_dir="$MYGROUP/trash"

# 当前目录
old_dir="$(pwd)"

# 检查是否有文件参数
if [[ $# -eq 0 ]]; then
    echo "Error: No files specified to restore."
    exit 1
fi

# 循环处理每个文件
for file in "$@"; do
    # 只取文件名，去掉路径
    basename_file="$(basename "$file")"
    src="$trash_dir/$basename_file"

    if [[ -e "$src" ]]; then
        mv -f "$src" "$old_dir"/
        echo "Restored $basename_file to $old_dir"
    else
        echo "Warning: File not found in trash: $basename_file"
    fi
done
