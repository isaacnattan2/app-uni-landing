# 🚀 GUIA RENDER - APP UNI Landing Page

## Passo 1: Criar Repositório GitHub
1. Acesse: https://github.com/new
2. Nome: `app-uni-landing`
3. Descrição: "Landing page APP UNI"
4. Public (para Render acessar)
5. Clique: Create repository

## Passo 2: Push do Projeto

Execute na pasta do projeto:
```bash
git remote add origin https://github.com/SEU_USERNAME/app-uni-landing.git
git branch -M main
git push -u origin main
```

Substitua `SEU_USERNAME` pelo seu username GitHub.

## Passo 3: Criar Conta Render

1. Acesse: https://render.com
2. Clique: Sign up
3. Escolha: Continue with GitHub
4. Authorize o Render
5. ✅ Conta criada!

## Passo 4: Deploy no Render

1. No Render, clique: **New +**
2. Selecione: **Web Service**
3. Selecione repositório: `app-uni-landing`
4. Preencha:
   - **Name:** `app-uni-landing`
   - **Environment:** `Node`
   - **Build Command:** `npm install`
   - **Start Command:** `npm start`
   - **Plan:** Free (ou pago se quiser)

5. Clique: **Create Web Service**
6. Aguarde 2-3 minutos
7. ✅ Deploy pronto!

## Resultado

Sua URL será: `https://app-uni-landing.onrender.com` (ou similar)

---

## Arquivos Já Configurados

- ✓ `config/Procfile` - Render sabe como iniciar
- ✓ `server.js` - Escuta porta correta
- ✓ `package.json` - Dependências prontas
- ✓ `.gitignore` - Arquivos corretos excluídos

## Se der erro no deploy

Verifique os logs no Render:
1. Acesse seu serviço
2. Clique em "Logs"
3. Procure por mensagens de erro
4. Comum: Falta fazer push

---

**Tempo total:** ~10 minutos
**Status:** Pronto!
