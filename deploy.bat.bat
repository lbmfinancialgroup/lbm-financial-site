@echo off
setlocal

:: Set working directory
cd /d "C:\Users\Owner\Downloads\LBM_Full_Project_Final" || (
  echo ❌ ERROR: Cannot find project folder. Make sure path is correct.
  pause
  exit /b
)

:: Check if Git is installed
where git >nul 2>&1 || (
  echo ❌ ERROR: Git is not installed or not in PATH.
  pause
  exit /b
)

:: Deploy to GitHub
echo ✅ Staging changes...
git add .

echo ✅ Committing changes...
git commit -m "Auto deploy: updated site files"

echo ✅ Pushing to GitHub...
git push origin main

:: Open site in browser
echo 🌐 Opening live site...
start https://spiffy-mochi-ad1a1c.netlify.app/

echo ✅ Deployment complete!
pause
