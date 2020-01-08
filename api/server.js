const express = require('express')
const mysql = require('mysql');
const app = express()

const connection = mysql.createConnection({
  host: 'trio-test-api-db',
  port: 3306,
  user: 'trio',
  password: 'trio',
  database: 'trio'
});
// connection.connect();

app.get('/', function (req, res) {
  res.send('Ceci est l\'API.')
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})