#!/usr/bin/env bash
# Dừng infra (giữ lại container & volume)
set -euo pipefail

if [[ -f .env ]]; then
  export $(grep -v '^#' .env | xargs)
fi

echo "⏹️  Đang dừng infra..."
docker compose stop

echo "✅ Đã dừng. Dữ liệu vẫn được giữ nguyên."
echo "   Khởi động lại: ./start.sh"