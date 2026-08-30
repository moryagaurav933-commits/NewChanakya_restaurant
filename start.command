#!/bin/bash
# Navigate to the project directory
cd "$(dirname "$0")"

echo "==============================================="
echo " Starting New Chanakya Restaurant Local Server "
echo "==============================================="

# Check if node_modules exists, if not install dependencies
if [ ! -d "node_modules" ]; then
    echo "Installing required dependencies (npm install)..."
    npm install
fi

echo "Launching Vite development server..."
npm run dev
