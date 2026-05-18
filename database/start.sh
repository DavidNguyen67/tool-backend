#!/usr/bin/env bash
# Khởi động lại container đã stop (không build lại image)
set -euo pipefail

if [[ -f .env ]]; then
  export $(grep -v '^#' .env | xargs)
fi

echo "▶️  Đang start infra..."
docker compose start

echo "✅ Infra đã chạy lại!"
echo "   MongoDB   : localhost:27017"
echo "   Redis     : localhost:6379"
echo "   Postgres  : localhost:5432"
echo "   RabbitMQ  : localhost:5672  |  UI: http://localhost:15672"