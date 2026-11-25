#!/bin/bash

git --version

docker --version

docker compose version

free -h

sysctl vm.max_map_count

commands=("git" "docker" "python3" "node" "nonexistent_cmd")

for cmd in "${commands[@]}"; do
    # ใช้ command -v ร่วมกับ &>/dev/null เพื่อซ่อนข้อความผลลัพธ์ปกติ
    if command -v "$cmd" &>/dev/null; then
        echo "✅ $cmd (ติดตั้งแล้ว)"
    else
        echo "❌ $cmd (ไม่พบคำสั่งนี้)"
    fi
done
