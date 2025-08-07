@echo off
@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion
title UC Launcher
echo Установщик UC Launcher

:askname
set "username="
set /p "username=Придумай свое имя пользователя: "
if "!username!"=="" (
    echo Ты должен написать свое имя пользователя!
    goto askname
)

:ask_password
set "password="
set /p "password=Создай пароль (минимум 8 символов): "
if "!password!"=="" (
    echo Ошибка: пароль не может быть пустым!
    goto ask_password
)

if "!password:~7!"=="" (
    echo Ошибка: пароль должен быть минимум 8 символов!
    goto ask_password
)

echo Привет, %username%
echo Сейчас начинается установка лаунчер...
TIMEOUT /T 5 /NOBREAK
:: Анимация установки с прогресс-баром
echo 1 "Инициализация"
TIMEOUT /T 5 /NOBREAK
echo 15 "Создание папок"
TIMEOUT /T 5 /NOBREAK
echo 30 "Проверка системы"
TIMEOUT /T 5 /NOBREAK
echo 45 "Загрузка файлов"
TIMEOUT /T 5 /NOBREAK
echo 60 "Распаковка данных"
TIMEOUT /T 5 /NOBREAK
echo 75 "Настройка лаунчера"
TIMEOUT /T 5 /NOBREAK
echo 90 "Шифрование данных"
TIMEOUT /T 5 /NOBREAK
echo  100 "Завершение"

:: Сохраняем данные с шифрованием пароля
(
    echo nickname: !username! > "C:\Voiceover\uc-launcher data\username.txt"
    echo password: !password! > "C:\Voiceover\uc-launcher data\password.txt"

) 
attrib +h +s ""C:\Voiceover\uc-launcher data""

echo.
echo    _   _  ___   _                      _            
echo   | | | |/ __| | |   __ _ _  _ _ _  __| |_  ___ _ _ 
echo   | |_| | (__  | |__/ _` | || | ' \/ _| ' \/ -_) '_|
echo     
TIMEOUT /T 5 /NOBREAK
echo.   \___/ \___| |____\__,_|\_,_|_||_\__|_||_\___|_| 

echo Лаунчер успешно установлен!
pause