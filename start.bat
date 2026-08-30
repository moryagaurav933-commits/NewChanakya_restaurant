@echo off
cd /d "%~dp0"

echo ===============================================
echo  Starting New Chanakya Restaurant Local Server 
echo ===============================================

if not exist "node_modules\" (
    echo Installing required dependencies (npm install)...
    call npm install
)

echo Launching Vite development server...
call npm run dev
