# 📁 Estrutura de Diretórios - APP UNI Landing Page

```
app-uni-landing/
│
├── 📂 public/                        ← Arquivos estáticos servidos ao cliente
│   └── index.html                    ← Página HTML principal
│
├── 📂 src/                           ← Código-fonte da aplicação
│   ├── 📂 css/                       ← Estilos CSS
│   │   └── styles.css                ← Estilos principais
│   │
│   ├── 📂 js/                        ← JavaScript
│   │   └── script.js                 ← Script principal (interatividade)
│   │
│   └── 📂 assets/                    ← Recursos estáticos
│       ├── 📂 images/                ← Imagens (PNG, JPG, SVG, etc)
│       ├── 📂 fonts/                 ← Fontes customizadas
│       └── 📂 icons/                 ← Ícones (SVG, PNG)
│
├── 📂 config/                        ← Configurações
│   ├── .env.example                  ← Template de variáveis de ambiente
│   ├── Procfile                      ← Configuração Render (Linux/Mac)
│   ├── render.yaml                   ← Configuração YAML Render
│   ├── deploy.sh                     ← Script deploy (Linux/Mac)
│   └── deploy.bat                    ← Script deploy (Windows)
│
├── 📂 docs/                          ← Documentação
│   ├── INDEX.md                      ← Mapa de navegação
│   ├── README.md                     ← Guia geral
│   ├── QUICKSTART.md                 ← Início rápido (5 min)
│   ├── PROJECT_SUMMARY.md            ← Resumo do projeto
│   ├── DEPLOY_GUIDE.md               ← Guia de deploy
│   ├── DOCUMENTATION.md              ← Documentação técnica
│   ├── TESTING.md                    ← Testes e validação
│   └── STRUCTURE.md                  ← Este arquivo
│
├── 📂 .github/                       ← Configurações GitHub
│   └── 📂 workflows/                 ← GitHub Actions (CI/CD)
│       └── [workflows aqui]
│
├── 📋 Arquivos de Raiz (Root)
│   ├── .gitignore                    ← Arquivos ignorados pelo Git
│   ├── package.json                  ← Dependências e scripts Node
│   ├── package-lock.json             ← Lock file do npm
│   ├── server.js                     ← Servidor Express principal
│   └── node_modules/                 ← Dependências instaladas (não commitar)
│
└── 📂 node_modules/                  ← Pacotes npm (ignorar)
    └── [pacotes instalados]
```

---

## 📂 Estrutura Hierárquica

### **Nível 1: Raiz do Projeto**
- `server.js` - Servidor principal
- `package.json` - Dependências
- `.gitignore` - Gitignore

### **Nível 2: Diretórios Principais**

#### `📂 public/`
Arquivos servidos diretamente ao cliente via HTTP
- `index.html` - Página principal renderizada no navegador

#### `📂 src/`
Código-fonte organizado por tipo
- `css/` - Estilos CSS
- `js/` - Scripts JavaScript
- `assets/` - Recursos (imagens, fonts, ícones)

#### `📂 config/`
Configurações da aplicação e deploy
- Variáveis de ambiente
- Configuração Render (Procfile, render.yaml)
- Scripts de deploy

#### `📂 docs/`
Toda a documentação do projeto
- Guias de uso
- Instruções de deploy
- Referência técnica

#### `📂 .github/`
Integração GitHub (CI/CD, templates, workflows)
- GitHub Actions workflows

---

## 📋 Descrição Detalhada

### **public/** - Arquivos Públicos
Tudo neste diretório é servido via HTTP para o navegador.

```
public/
├── index.html          ← Referencia /css e /js
└── [favicon.ico]       ← Futuro favicon
```

**Acesso via URL:**
```
GET http://localhost:3000/              → public/index.html
GET http://localhost:3000/css/styles.css → src/css/styles.css (rotas em server.js)
```

---

### **src/** - Código-Fonte

#### **src/css/**
Estilos CSS da aplicação

```
src/css/
├── styles.css          ← Estilos principais (12 KB)
├── [variables.css]     ← Futuro: variáveis de cor
├── [responsive.css]    ← Futuro: media queries
└── [animations.css]    ← Futuro: animações
```

#### **src/js/**
Scripts JavaScript da aplicação

```
src/js/
├── script.js           ← Script principal (4 KB)
├── [utils.js]          ← Futuro: funções utilitárias
├── [analytics.js]      ← Futuro: analytics
└── [tracking.js]       ← Futuro: event tracking
```

#### **src/assets/**
Recursos estáticos

```
src/assets/
├── images/             ← Imagens (PNG, JPG, WebP)
│   ├── [hero-bg.jpg]
│   ├── [app-uni-logo.png]
│   └── [feature-*.svg]
│
├── fonts/              ← Fontes customizadas
│   └── [roboto.woff2]
│
└── icons/              ← Ícones
    ├── [social-*.svg]
    └── [ui-*.svg]
```

---

### **config/** - Configurações

#### Arquivos de Ambiente
```
config/
├── .env.example        ← Template (versionado no Git)
└── [.env]              ← Produção (NÃO versionado)
```

#### Configuração Render
```
config/
├── Procfile            ← Para Render interpretar comando
├── render.yaml         ← Configuração YAML alternativa
├── deploy.sh           ← Script bash para deploy
└── deploy.bat          ← Script batch para deploy
```

---

### **docs/** - Documentação

```
docs/
├── INDEX.md            ← Mapa de navegação
├── README.md           ← Guia geral (read first)
├── QUICKSTART.md       ← 5 minutos para começar
├── PROJECT_SUMMARY.md  ← Resumo executivo
├── DEPLOY_GUIDE.md     ← Deploy passo-a-passo
├── DOCUMENTATION.md    ← Referência técnica
├── TESTING.md          ← Testes e validação
└── STRUCTURE.md        ← Este arquivo
```

---

## 🔄 Fluxo de Requisições

### **1. Cliente Requisita Página**
```
Browser → GET http://localhost:3000/
   ↓
server.js → Rota '/'
   ↓
Serve: public/index.html
   ↓
HTML contém:
   <link rel="stylesheet" href="/css/styles.css">
   <script src="/js/script.js"></script>
```

### **2. Browser Carrega CSS**
```
HTML → <link href="/css/styles.css">
   ↓
server.js → Rota /css
   ↓
Serve: src/css/styles.css
   ↓
Estilos aplicados na página
```

### **3. Browser Carrega JavaScript**
```
HTML → <script src="/js/script.js">
   ↓
server.js → Rota /js
   ↓
Serve: src/js/script.js
   ↓
Interatividade ativada
```

### **4. Requisitar Imagens (Futuro)**
```
HTML → <img src="/assets/images/logo.png">
   ↓
server.js → Rota /assets
   ↓
Serve: src/assets/images/logo.png
   ↓
Imagem exibida
```

---

## ⚙️ Configuração de Rotas (server.js)

```javascript
// Serve public/ na raiz
app.use(express.static(publicPath));

// Serve src/css/ em /css
app.use('/css', express.static(path.join(__dirname, 'src', 'css')));

// Serve src/js/ em /js
app.use('/js', express.static(path.join(__dirname, 'src', 'js')));

// Serve src/assets/ em /assets
app.use('/assets', express.static(path.join(__dirname, 'src', 'assets')));
```

---

## 📦 Visão Geral dos Diretórios

| Diretório | Conteúdo | Git | Propósito |
|-----------|----------|-----|----------|
| `public/` | HTML | ✓ | Arquivos públicos |
| `src/` | CSS, JS, Assets | ✓ | Código-fonte |
| `config/` | Configurações | Parcial | Setup e deploy |
| `docs/` | Documentação | ✓ | Guias e ajuda |
| `.github/` | CI/CD | ✓ | Automação |
| `node_modules/` | Pacotes npm | ✗ | Dependências |
| `.env` | Variáveis | ✗ | Segredos |

---

## 🚀 Como Usar Esta Estrutura

### **Adicionar Nova Página**
1. Crie arquivo em `public/novo.html`
2. Adicione rota em `server.js` se necessário
3. Teste: `http://localhost:3000/novo.html`

### **Adicionar Novo Estilo**
1. Crie arquivo em `src/css/novo.css`
2. Importe em `src/css/styles.css` ou `public/index.html`
3. Teste: Recarga do navegador

### **Adicionar Nova Funcionalidade**
1. Crie arquivo em `src/js/novo.js`
2. Importe em `src/js/script.js` ou `public/index.html`
3. Teste: Verificar console (F12)

### **Adicionar Imagens/Assets**
1. Coloque em `src/assets/images/` ou categoria apropriada
2. Referencie em HTML: `<img src="/assets/images/nome.png">`
3. Pronto!

---

## 🎯 Benefícios da Estrutura

✅ **Organização Clara** - Cada tipo de arquivo tem seu lugar
✅ **Fácil Manutenção** - Encontrar arquivo rapidamente
✅ **Escalável** - Fácil adicionar novas seções
✅ **Profissional** - Padrão da indústria
✅ **Git Friendly** - Claro o que commitar
✅ **Deploy Ready** - Pronto para produção
✅ **SEO Friendly** - Estrutura limpa

---

## 📈 Próximas Expansões

Quando o projeto crescer, adicione:

```
├── 📂 src/
│   ├── 📂 components/     ← Componentes reutilizáveis
│   ├── 📂 utils/          ← Funções utilitárias
│   ├── 📂 lib/            ← Bibliotecas customizadas
│   └── 📂 middleware/     ← Middleware Express
│
├── 📂 tests/              ← Testes automatizados
│   ├── 📂 unit/
│   ├── 📂 integration/
│   └── 📂 e2e/
│
├── 📂 scripts/            ← Scripts de build/deploy
│   └── build.js
│
└── 📂 public/
    ├── 📂 css/            ← CSS compilado (minificado)
    └── 📂 js/             ← JS compilado (minificado)
```

---

## ✅ Checklist de Estrutura

- [x] `public/` - Arquivos públicos
- [x] `src/css/` - Estilos
- [x] `src/js/` - Scripts
- [x] `src/assets/` - Recursos
- [x] `config/` - Configurações
- [x] `docs/` - Documentação
- [x] `.github/` - CI/CD
- [x] `server.js` - Atualizado com rotas
- [x] `index.html` - Referências atualizadas
- [x] `.gitignore` - Atualizado

---

**Versão:** 1.0.0
**Data:** Novembro 2024
**Status:** ✅ Estrutura Implementada

Sua landing page agora tem uma hierarquia profissional e escalável! 🚀
