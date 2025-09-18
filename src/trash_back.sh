#!/usr/bin/env bash

# ����Ŀ¼
trash_dir="$MYGROUP/trash"

# ��ǰĿ¼
old_dir="$(pwd)"

# ����Ƿ����ļ�����
if [[ $# -eq 0 ]]; then
    echo "Error: No files specified to restore."
    exit 1
fi

# ѭ������ÿ���ļ�
for file in "$@"; do
    # ֻȡ�ļ�����ȥ��·��
    basename_file="$(basename "$file")"
    src="$trash_dir/$basename_file"

    if [[ -e "$src" ]]; then
        mv -f "$src" "$old_dir"/
        echo "Restored $basename_file to $old_dir"
    else
        echo "Warning: File not found in trash: $basename_file"
    fi
done
