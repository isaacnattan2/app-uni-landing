#!/bin/bash
# Script para fazer push da landing page para GitHub e deploy no Render

echo "🚀 APP UNI Landing Page - Deploy Script"
echo "========================================"
echo ""

# Verificar se git está instalado
if ! command -v git &> /dev/null; then
    echo "❌ Git não está instalado. Instale em: https://git-scm.com"
    exit 1
fi

# Inicializar Git (se não estiver já)
if [ ! -d ".git" ]; then
    echo "📝 Inicializando repositório Git..."
    git init
    echo "✅ Repositório Git inicializado"
else
    echo "✅ Repositório Git já existe"
fi

echo ""
echo "📋 Adicionando arquivos..."
git add .
echo "✅ Arquivos adicionados"

echo ""
echo "💾 Fazendo primeiro commit..."
git commit -m "feat: Initial commit - APP UNI Landing Page"
echo "✅ Commit realizado"

echo ""
echo "🔗 Próximas etapas:"
echo "1. Crie um repositório no GitHub: https://github.com/new"
echo "2. Copie a URL do repositório (https://github.com/seu-usuario/seu-repo.git)"
echo "3. Execute:"
echo ""
echo "   git remote add origin https://github.com/seu-usuario/seu-repo.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "4. Vá para https://render.com e crie um novo Web Service"
echo "5. Conecte seu repositório GitHub"
echo ""
echo "✨ Pronto! Seu projeto será deployado automaticamente!"
