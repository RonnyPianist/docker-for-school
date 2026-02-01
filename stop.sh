#!/bin/bash

echo "================================================"
echo "  Docker Development Environment - STOP"
echo "================================================"
echo ""

echo "Stopping all services..."
docker-compose down

echo ""
echo "================================================"
echo "  All services stopped!"
echo "================================================"
echo ""
echo "To restart: ./start.sh"
echo ""
