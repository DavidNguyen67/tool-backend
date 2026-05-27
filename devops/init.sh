set -euo pipefail

echo "🚀 Đang khởi động Jenkins..."
docker compose up -d --build

echo ""
echo "✅ Jenkins đang chạy!"
echo "   URL: http://localhost:8081/jenkins"
echo ""

echo "⏳ Chờ Jenkins khởi động..."
until docker exec jenkins test -f /var/jenkins_home/secrets/initialAdminPassword 2>/dev/null; do
  sleep 3
  echo "   ...đang chờ"
done

echo ""
echo "🔑 Initial Admin Password:"
echo "   $(docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword)"
echo ""
echo "📋 Xem log: docker compose logs -f jenkins"