const express = require('express');
const path = require('path');

const app = express();
const PORT = 80;

// Servir el archivo index.html
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});


app.listen(PORT, '0.0.0.0', () => {
	    console.log(`Servidor corriendo en http://0.0.0.0:${PORT}`);
});




