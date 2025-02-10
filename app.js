const express = require('express');
const app = express();
const port = 80;

app.get('/', (req, res) => {
  res.send('Hello World, this is a simple app running on a public IP!');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
