const express = require('express');
const path = require('path');
const app = express();

const PORT = process.env.PORT || 3000;
const publicPath = path.join(__dirname, 'public');

// Set correct MIME types
express.static.mime.types['css'] = 'text/css; charset=utf-8';
express.static.mime.types['js'] = 'application/javascript; charset=utf-8';

// Serve static files from public directory
app.use(express.static(publicPath));

// Serve CSS from src/css
app.use('/css', express.static(path.join(__dirname, 'src', 'css')));

// Serve JS from src/js
app.use('/js', express.static(path.join(__dirname, 'src', 'js')));

// Serve assets from src/assets
app.use('/assets', express.static(path.join(__dirname, 'src', 'assets')));

// Serve the main landing page
app.get('/', (req, res) => {
    res.sendFile(path.join(publicPath, 'index.html'));
});

// Fallback route
app.get('*', (req, res) => {
    res.sendFile(path.join(publicPath, 'index.html'));
});

// Start the server
app.listen(PORT, () => {
    console.log(`APP UNI Landing Page is running on port ${PORT}`);
    console.log(`Open http://localhost:${PORT} in your browser`);
});
