set -euo pipefail

echo "🗑️  Đang xóa container và network..."

# Thêm -v nếu muốn xóa cả volume (XÓA TOÀN BỘ DỮ LIỆU JENKINS!)
docker compose down

echo "✅ Đã dọn dẹp xong."
echo "   ⚠️  Để xóa cả volume (mất dữ liệu): docker compose down -v"