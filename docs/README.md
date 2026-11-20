# APP UNI - Landing Page

Uma landing page moderna e responsiva para apresentar a plataforma APP UNI - Compras, Mobilidade, Entregas e Soluções Urbanas em uma única plataforma.

## 📋 Sobre o Projeto

O APP UNI é uma plataforma integrada que conecta:
- **Usuários**: Para comprar produtos, serviços e usar mobilidade
- **Comércios**: Para vender seus produtos e serviços
- **Motoristas**: Para transportar passageiros e fazer entregas
- **Cidades**: Para gerenciar e melhorar a infraestrutura urbana

## 🎨 Características da Landing Page

- ✅ Design moderno e atraente
- ✅ Totalmente responsivo (mobile, tablet, desktop)
- ✅ Animações suaves e interatividades
- ✅ Seções bem estruturadas:
  - Hero section com CTA
  - Seção sobre os diferentes atores
  - Funcionalidades principais (6 pilares)
  - Fluxos de uso
  - Benefícios
  - Call-to-action
  - Footer

## 🚀 Como Usar Localmente

### Pré-requisitos
- Node.js 18+ instalado
- npm ou yarn

### Instalação

1. Clone o repositório:
```bash
git clone <seu-repositorio>
cd unilandpage
```

2. Instale as dependências:
```bash
npm install
```

3. Execute o servidor:
```bash
npm start
```

4. Abra seu navegador e acesse:
```
http://localhost:3000
```

## 📦 Estrutura do Projeto

```
unilandpage/
├── index.html          # Página principal
├── styles.css          # Estilos CSS
├── script.js           # JavaScript interativo
├── server.js           # Servidor Express
├── package.json        # Dependências do projeto
├── Procfile            # Configuração para Render
├── .gitignore          # Arquivos a ignorar no git
└── README.md           # Este arquivo
```

## 🌐 Deploy no Render

### Passo 1: Preparar o repositório Git

```bash
git init
git add .
git commit -m "Initial commit: APP UNI Landing Page"
git remote add origin <seu-repositorio-github>
git push -u origin main
```

### Passo 2: Criar serviço no Render

1. Acesse [render.com](https://render.com)
2. Faça login ou crie uma conta
3. Clique em "New +" e selecione "Web Service"
4. Conecte seu repositório GitHub
5. Configure da seguinte forma:

   **Build Command:**
   ```
   npm install
   ```

   **Start Command:**
   ```
   npm start
   ```

   **Environment:**
   - Node.js

   **Plan:** Escolha o plano desejado (Free ou pago)

6. Clique em "Create Web Service"
7. Aguarde o deploy ser concluído

### Passo 3: Acessar a aplicação

Após o deploy, o Render fornecerá uma URL pública como:
```
https://seu-app-name.onrender.com
```

## 🔧 Variáveis de Ambiente

Atualmente, a aplicação não requer variáveis de ambiente especiais. O Render gerenciará automaticamente:
- **PORT**: Porta em que a aplicação rodará (padrão: 3000)

Se precisar adicionar variáveis no futuro, você pode fazê-lo nas configurações do serviço no Render.

## 📱 Responsividade

A landing page é totalmente responsiva e funciona perfeitamente em:
- Dispositivos mobile (< 480px)
- Tablets (480px - 768px)
- Desktops (> 768px)

## 🎯 Funcionalidades Principais

### Navbar Sticky
- Navegação fixa no topo
- Links smooth scroll para seções
- Estilo diferenciado ao rolar

### Hero Section
- Design atrativo com gradiente
- Animações suaves
- Buttons com hover effects

### Feature Cards
- 4 perspectivas diferentes (Usuário, Comércio, Motorista, Cidade)
- Hover animations
- Listas com checkmarks

### Funcionalidades
- 6 pilares principais da plataforma
- Cores diferenciadas para cada funcionalidade
- Descrições detalhadas

### Fluxos
- 3 fluxos diferentes visualizados
- Timeline interativa
- Responsiva em mobile

### Benefícios
- 6 benefícios principais
- Cards com hover effects
- Ícones emojis

## 💡 Personalizações Possíveis

Você pode facilmente personalizar:

1. **Cores**: Edite as variáveis CSS em `styles.css`:
   ```css
   :root {
       --primary-blue: #0066ff;
       --accent-orange: #ff8c00;
       /* ... */
   }
   ```

2. **Textos**: Edite o `index.html` com suas informações

3. **Contato**: Adicione seus dados reais na seção footer

4. **Funcionalidades**: Adicione ou remova cards conforme necessário

## 🔐 Segurança

- Sem dependências externas pesadas
- Express.js para servir arquivos estáticos com segurança
- CORS configurado quando necessário

## 📞 Suporte

Para problemas com o deploy:

1. Verifique os logs no Render
2. Certifique-se de que `package.json` e `Procfile` estão no repositório
3. Verifique se o servidor.js está escutando na porta `process.env.PORT`

## 📄 Licença

MIT

## 👨‍💻 Desenvolvido com

- HTML5
- CSS3 (com suporte a gradientes e animações)
- Vanilla JavaScript
- Express.js
- Node.js

---

**Pronto para transformar sua vida urbana com o APP UNI! 🚀**
