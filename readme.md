# Root docker-compose.yml — Entry point

#

# START SERVICES (up):

# All services: docker compose up -d

# Only databases: docker compose --env-file .env -f docker-compose.databases.yml up -d

# Only kafka: docker compose --env-file .env -f docker-compose.kafka.yml up -d

# Only devops: docker compose --env-file .env -f docker-compose.devops.yml up -d

# Databases + Kafka: docker compose --env-file .env -f docker-compose.databases.yml -f docker-compose.kafka.yml up -d

# Foreground (logs): docker compose up

#

# STOP SERVICES (down):

# All services: docker compose down

# Only databases: docker compose -f docker-compose.databases.yml down

# Only kafka: docker compose -f docker-compose.kafka.yml down

# Only devops: docker compose -f docker-compose.devops.yml down

# Remove volumes: docker compose down -v

#

# VIEW STATUS & LOGS:

# List running: docker compose ps

# Show logs (all): docker compose logs -f

# Show logs (service): docker compose logs -f <service_name>

# Show logs (recent): docker compose logs --tail=100

#

# BUILD & REBUILD:

# Build images: docker compose build

# Build & start: docker compose up -d --build

# Force rebuild: docker compose build --no-cache && docker compose up -d

#

# CLEANUP:

# Remove stopped: docker compose rm

# Remove all + volumes: docker compose down -v

# Remove dangling: docker image prune -f
