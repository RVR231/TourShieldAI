#!/bin/bash
echo "========================================"
echo "   TourShield AI - Starting App"
echo "========================================"
echo ""

echo "[1/2] Installing Server dependencies..."
cd server && npm install
cd ..

echo "[2/2] Installing Client dependencies..."
cd client && npm install
cd ..

echo "========================================"
echo "Starting Server and Client..."
echo "========================================"
echo "Server: http://localhost:5000"
echo "Client: http://localhost:3000"
echo ""

# Start server in background
cd server && node server.js &
SERVER_PID=$!
echo "Server started (PID: $SERVER_PID)"

sleep 2

# Start client
cd ../client && npm run dev &
CLIENT_PID=$!
echo "Client started (PID: $CLIENT_PID)"

echo ""
echo "Both running! Open: http://localhost:3000"
echo "Press Ctrl+C to stop both."

wait
