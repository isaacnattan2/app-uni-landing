@echo off
REM Script para fazer push da landing page para GitHub e deploy no Render

echo.
echo 🚀 APP UNI Landing Page - Deploy Script
echo ======================================== 
echo.

REM Verificar se git está instalado
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Git não está instalado. Instale em: https://git-scm.com
    pause
    exit /b 1
)

REM Inicializar Git (se não estiver já)
if not exist ".git" (
    echo 📝 Inicializando repositório Git...
    call git init
    echo ✅ Repositório Git inicializado
) else (
    echo ✅ Repositório Git já existe
)

echo.
echo 📋 Adicionando arquivos...
call git add .
echo ✅ Arquivos adicionados

echo.
echo 💾 Fazendo primeiro commit...
call git commit -m "feat: Initial commit - APP UNI Landing Page"
echo ✅ Commit realizado

echo.
echo 🔗 Próximas etapas:
echo 1. Crie um repositório no GitHub: https://github.com/new
echo 2. Copie a URL do repositório (https://github.com/seu-usuario/seu-repo.git)
echo 3. Execute no PowerShell ou Command Prompt:
echo.
echo    git remote add origin https://github.com/seu-usuario/seu-repo.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 4. Vá para https://render.com e crie um novo Web Service
echo 5. Conecte seu repositório GitHub
echo.
echo ✨ Pronto! Seu projeto será deployado automaticamente!
echo.
pause
