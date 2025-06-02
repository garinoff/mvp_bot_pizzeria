@echo off
setlocal enabledelayedexpansion

:: --- Настройки пользователя ---
set "BOT_TOKEN=8193231896:AAEIwC1mB2KDZELFcUL0LVMG9D--dM7P1FQ"  :: <<== Вставь сюда свой токен от BotFather
set "NGROK_PATH=C:\ngrok.exe"  :: <<== путь к ngrok.exe
set "PROJECT_PATH=C:\Projects\mvp_bot_pizzeria\mvp_bot_pizzeria"
set "PORT=5000"

:: --- Запуск сервера Uvicorn ---
start "Uvicorn" cmd /k "cd /d %PROJECT_PATH% && uvicorn src.main:app --host 0.0.0.0 --port %PORT% --reload"

:: --- Подождать 5 секунд ---
timeout /t 5 /nobreak > nul

:: --- Запуск ngrok ---
start "ngrok" cmd /k "%NGROK_PATH% http %PORT%"
timeout /t 5 /nobreak > nul

:: --- Получение публичного URL от ngrok ---
for /f "tokens=2 delims=: " %%a in ('curl -s http://127.0.0.1:4040/api/tunnels ^| findstr /i "https"') do (
    set "NGROK_URL=%%a"
    goto :found
)
:found

:: Удалить лишние символы (начало строки и кавычки)
set "NGROK_URL=!NGROK_URL:~1,-1!"

:: --- Установка webhook ---
curl -X POST "https://api.telegram.org/bot%BOT_TOKEN%/setWebhook?url=!NGROK_URL!/webhook"

echo.
echo 🔗 Webhook установлен: !NGROK_URL!/webhook
echo.
pause
