set -euo pipefail

echo "🚀 Đang khởi động Jenkins..."
docker compose up -d --build

echo ""
echo "✅ Jenkins đang chạy!"
echo "   URL: http://localhost:8081/jenkins"
echo ""
echo "📋 Xem log: docker compose logs -f jenkins"