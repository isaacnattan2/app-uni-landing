# ⚡ Quick Start - APP UNI Landing Page

## 🚀 Comece em 5 Minutos

### Local (Desenvolvimento)

```bash
# 1. Clone ou navegue para o diretório
cd unilandpage

# 2. Instale dependências
npm install

# 3. Inicie o servidor
npm start

# 4. Abra no navegador
http://localhost:3000
```

✅ Pronto! Sua landing page está rodando localmente.

---

## 🌍 Deploy no Render (1-2 minutos)

### Passo 1: Preparar GitHub

```bash
git init
git add .
git commit -m "feat: APP UNI Landing Page"
git remote add origin https://github.com/seu-usuario/seu-repo.git
git push -u origin main
```

### Passo 2: Deploy no Render

1. Acesse **[render.com](https://render.com)**
2. Clique **"New +" → "Web Service"**
3. Conecte seu repositório GitHub
4. Preencha:
   - **Name:** `app-uni-landing`
   - **Build Command:** `npm install`
   - **Start Command:** `npm start`
5. Clique **"Create Web Service"**
6. ✅ Aguarde 2-3 minutos
7. Acesse sua URL pública!

---

## 📋 Arquivos Principais

| Arquivo | Propósito |
|---------|-----------|
| `index.html` | Estrutura HTML |
| `styles.css` | Estilos e responsividade |
| `script.js` | Interatividade |
| `server.js` | Servidor Express |
| `package.json` | Dependências |
| `Procfile` | Config Render |

---

## 🎨 Personalizações Rápidas

### Mudar Título
Edite em `index.html`:
```html
<h1>Seu Título Aqui</h1>
```

### Mudar Cor Principal
Edite em `styles.css`:
```css
--primary-blue: #seu-azul;
```

### Mudar Texto
Busque por "APP UNI" e troque por seu texto

---

## 🧪 Testar Antes de Deploy

```bash
# Verificar se roda localmente
npm start

# Verificar se a página carrega
curl http://localhost:3000
```

---

## 📊 Checklist de Deploy

- [ ] Repositório no GitHub criado
- [ ] Código com push para `main`
- [ ] Conta no Render criada
- [ ] Web Service configurado
- [ ] Deploy concluído (status: Live)
- [ ] URL acessível no navegador

---

## 🆘 Problemas Comuns

| Problema | Solução |
|----------|---------|
| `npm: command not found` | Instale Node.js de nodejs.org |
| Porta 3000 em uso | `npm start` em outra porta ou feche app usando 3000 |
| Deploy falha | Verifique logs no Render |
| Page não carrega | Limpe cache (Ctrl+Shift+Delete) |

---

## 📞 Links Úteis

- 📖 [Documentação Completa](./DOCUMENTATION.md)
- 🚀 [Guia Detalhado de Deploy](./DEPLOY_GUIDE.md)
- 🧪 [Guia de Testes](./TESTING.md)
- 📄 [README](./README.md)

---

## 🎯 Próximos Passos

1. ✅ Deploy no Render
2. ⬜ Adicione formulário de contato
3. ⬜ Implemente analytics
4. ⬜ Configure domínio customizado

---

**Parabéns! 🎉 Sua landing page está no ar!**

Para mais detalhes, veja os documentos na pasta.
