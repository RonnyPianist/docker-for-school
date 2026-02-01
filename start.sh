#!/bin/bash

echo "================================================"
echo "  Docker Development Environment - START"
echo "================================================"
echo ""

echo "Starting all services..."
docker-compose up -d

echo ""
echo "================================================"
echo "  Services started!"
echo "================================================"
echo ""
echo "Waiting for container initialization..."
sleep 10

echo ""
echo "Services are available at:"
echo ""
echo "  Python Dev:    http://localhost:8080"
echo "  Java Dev:      http://localhost:8081"
echo "  Web Dev:       http://localhost:8082"
echo "  Portainer:     http://localhost:9000"
echo ""
echo "  MySQL:         localhost:3306"
echo "  PostgreSQL:    localhost:5432"
echo "  MongoDB:       localhost:27017"
echo "  Redis:         localhost:6379"
echo ""
echo "View status:  docker-compose ps"
echo "View logs:    docker-compose logs -f"
echo ""
