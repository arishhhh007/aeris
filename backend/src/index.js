const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

app.get('/', (req, res) => {
  res.json({ message: 'AERIS AX backend running' });
});

// Placeholder routes
app.use('/api', require('./api/placeholder'));

app.listen(port, () => {
  console.log(`AERIS backend listening on port ${port}`);
});
