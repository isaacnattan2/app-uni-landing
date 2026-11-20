const express = require('express');
const path = require('path');
const app = express();

const PORT = process.env.PORT || 3000;
const publicPath = path.join(__dirname, 'public');

console.log('DEBUG: __dirname =', __dirname);
console.log('DEBUG: publicPath =', publicPath);
console.log('DEBUG: index.html exists?', require('fs').existsSync(path.join(publicPath, 'index.html')));

// Middleware to force correct MIME types BEFORE express.static
app.use((req, res, next) => {
    if (req.path.endsWith('.css')) {
        res.type('text/css; charset=utf-8');
    } else if (req.path.endsWith('.js')) {
        res.type('application/javascript; charset=utf-8');
    }
    next();
});

// Serve static files from public directory
app.use(express.static(publicPath));

// Serve CSS from src/css
app.use('/css', express.static(path.join(__dirname, 'src', 'css'), { type: 'text/css' }));

// Serve JS from src/js
app.use('/js', express.static(path.join(__dirname, 'src', 'js'), { type: 'application/javascript' }));

// Serve assets from src/assets
app.use('/assets', express.static(path.join(__dirname, 'src', 'assets')));

// Serve the main landing page
app.get('/', (req, res) => {
    console.log('GET / - serving index.html from', path.join(publicPath, 'index.html'));
    res.sendFile(path.join(publicPath, 'index.html'));
});

// Fallback route
app.get('*', (req, res) => {
    console.log('GET * - serving index.html from', path.join(publicPath, 'index.html'));
    res.sendFile(path.join(publicPath, 'index.html'));
});

// Start the server
app.listen(PORT, '0.0.0.0', () => {
    console.log(`APP UNI Landing Page is running on port ${PORT}`);
    console.log(`Open http://localhost:${PORT} in your browser`);
});
