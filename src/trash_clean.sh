#!/usr/bin/env bash

trash_dir="/group/ll010/hgao/trash"

echo "Deleting all files in $trash_dir ..."
rm -rf "$trash_dir"/*
echo "Trash cleaned."
