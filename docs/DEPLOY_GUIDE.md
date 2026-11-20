# 🚀 Guia Completo de Deploy no Render

## Pré-requisitos

- Conta GitHub com o repositório do projeto
- Conta no Render (render.com)

## Passo 1: Preparar o Repositório Git

### 1.1 Inicializar Git (se ainda não estiver)

```bash
cd unilandpage
git init
```

### 1.2 Adicionar arquivos ao Git

```bash
git add .
git commit -m "feat: Initial commit - APP UNI Landing Page"
```

### 1.3 Adicionar remote e fazer push

```bash
git remote add origin https://github.com/seu-usuario/seu-repositorio.git
git branch -M main
git push -u origin main
```

## Passo 2: Criar Conta no Render

1. Acesse https://render.com
2. Clique em "Sign Up"
3. Use sua conta GitHub para facilitar
4. Complete o cadastro

## Passo 3: Deploy Automático

### Método 1: Deploy via Interface Web (Recomendado)

1. No dashboard do Render, clique em "New +"
2. Selecione "Web Service"
3. Clique em "Connect" para conectar seu repositório GitHub
4. Selecione o repositório `seu-repositorio`
5. Preencha os campos:
   - **Name:** `app-uni-landing` (ou seu nome preferido)
   - **Region:** Selecione a região mais próxima
   - **Branch:** `main`
   - **Runtime:** `Node`
   - **Build Command:** `npm install`
   - **Start Command:** `npm start`
   - **Plan:** Escolha o plano (Free ou pago)

6. Em "Advanced", adicione as variáveis de ambiente (opcional):
   - `NODE_ENV` = `production`

7. Clique em "Create Web Service"

### Método 2: Deploy via render.yaml

Se você já tem o arquivo `render.yaml` no repositório:

1. Faça push do arquivo `render.yaml` para o GitHub
2. No dashboard do Render, o deploy pode ser automático
3. Ou use a URL: `https://render.com/deploy?repo=seu-repo-url`

## Passo 4: Monitorar o Deploy

1. Na página do seu serviço no Render, você verá:
   - **Logs** em tempo real
   - **Status** do deploy (In Progress → Live)
   - **URL pública** quando concluído

2. Aguarde até ver a mensagem:
   ```
   APP UNI Landing Page is running on port 3000
   ```

## Passo 5: Acessar a Landing Page

Após o deploy bem-sucedido, sua landing page estará disponível em:

```
https://seu-app-name.onrender.com
```

## 🔄 Deploy Automático

Após a configuração inicial, qualquer push para a branch `main` acionará um novo deploy automaticamente!

### Para fazer um novo deploy:

```bash
git add .
git commit -m "feat: Update landing page"
git push origin main
```

Render detectará a mudança e fará o deploy automaticamente em poucos minutos.

## 🐛 Troubleshooting

### Problema: "Build failed"

**Solução:**
- Verifique se todos os arquivos necessários estão no repositório
- Confirme que `package.json` e `server.js` estão presentes
- Verifique os logs de build no Render

### Problema: "Application failed to start"

**Solução:**
```
- Verifique se a porta está sendo usada corretamente: process.env.PORT || 3000
- Confirme que NODE_ENV está definido como production
```

### Problema: "Cannot find module 'express'"

**Solução:**
- Certifique-se de rodar `npm install` localmente
- Verifique se `node_modules` está no `.gitignore`
- O Render rodará `npm install` automaticamente

### Problema: Página em branco ou erro 404

**Solução:**
- Confirme que `index.html` está na raiz do projeto
- Verifique se os paths dos arquivos CSS e JS estão corretos
- Veja os logs do Render para mais detalhes

## 📊 Monitoramento

No dashboard do Render você pode:

1. Ver histórico de deploys
2. Visualizar logs em tempo real
3. Monitorar CPU, memória e requisições
4. Configurar alertas

## 💰 Considerações de Custo

- **Plano Free:** 
  - Incluso: 750 horas/mês
  - Spin down após 15 min de inatividade
  - Recomeça quando acessado

- **Plano Pago:**
  - Uptime 24/7
  - Melhor performance
  - Suporte prioritário

## 🔐 Variáveis Sensíveis

Se precisar armazenar informações sensíveis no futuro:

1. No Render, vá para seu serviço
2. Clique em "Environment"
3. Adicione as variáveis necessárias
4. Restart o serviço

**Nunca** faça push de `.env` com dados sensíveis!

## ✅ Checklist Final

- [ ] Repositório GitHub criado
- [ ] Arquivo `.gitignore` configurable
- [ ] `package.json` com dependências corretas
- [ ] `server.js` configurado corretamente
- [ ] `Procfile` presente no repositório
- [ ] Conta Render criada
- [ ] Web Service configurado
- [ ] Deploy bem-sucedido (status: Live)
- [ ] URL pública acessível
- [ ] Landing page renderizando corretamente

## 📞 Suporte Render

- Documentação: https://render.com/docs
- Status Page: https://status.render.com
- Email: support@render.com

---

**Parabéns! Sua landing page APP UNI está no ar! 🎉**
