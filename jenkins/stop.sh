#!/usr/bin/env bash
# Dừng Jenkins (giữ lại container & volume)
set -euo pipefail

echo "⏹️  Đang dừng Jenkins..."
docker compose stop

echo "✅ Đã dừng. Dữ liệu vẫn được giữ nguyên."
echo "   Khởi động lại: ./run.sh"