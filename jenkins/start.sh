#!/usr/bin/env bash
set -euo pipefail

echo "▶️  Đang start Jenkins..."
docker compose start

echo "✅ Jenkins đã chạy lại!"
echo "   URL: http://localhost:8081/jenkins"