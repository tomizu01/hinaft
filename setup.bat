@echo off
setlocal

cd /d "%~dp0"

if not exist "backend\venv\" (
    echo [setup] venv を作成します...
    py -3.13 -m venv backend\venv
    if errorlevel 1 (
        echo [setup] py -3.13 が失敗したため python で再試行します...
        python -m venv backend\venv
        if errorlevel 1 (
            echo [setup] venv 作成に失敗しました。Python 3.13 をインストールしてください。
            exit /b 1
        )
    )
) else (
    echo [setup] 既存の venv を使用します。
)

call backend\venv\Scripts\activate.bat
if errorlevel 1 (
    echo [setup] venv のアクティベートに失敗しました。
    exit /b 1
)

echo [setup] pip を更新します...
python -m pip install --upgrade pip

echo [setup] requirements.txt をインストールします...
pip install -r backend\requirements.txt
if errorlevel 1 (
    echo [setup] pip install に失敗しました。
    exit /b 1
)

if not exist "captures\processing\" (
    mkdir "captures\processing"
)

echo.
echo [setup] 完了しました。
echo 起動するには:
echo   call backend\venv\Scripts\activate.bat
echo   python backend\main.py
echo そのあとブラウザで http://localhost:8000 を開いてください。
endlocal
