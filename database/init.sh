#!/usr/bin/env bash
# Khởi động toàn bộ infra (MongoDB, Redis, Postgres, RabbitMQ)
set -euo pipefail

# Load file .env nếu có
if [[ -f .env ]]; then
  export $(grep -v '^#' .env | xargs)
  echo "✅ Đã load .env"
else
  echo "⚠️  Không tìm thấy file .env — hãy tạo từ .env.example"
  exit 1
fi

echo "🚀 Đang khởi động infra..."
docker compose up -d --build

echo ""
echo "✅ Các service đã chạy!"
echo "   MongoDB   : localhost:27017"
echo "   Redis     : localhost:6379"
echo "   Postgres  : localhost:5432"
echo "   RabbitMQ  : localhost:5672  |  UI: http://localhost:15672"
echo ""
echo "📋 Xem log: docker compose logs -f"