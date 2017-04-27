var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.get('/new', function (req, res) {
  res.send('Start new Chat!');
});

app.get('/room/:roomName', function (req, res) {
  res.send('Hello World!');
});

app.get('/chatter/:chatterName', function (req, res) {
  res.send('Hello World!');
});

app.listen(process.env.PORT, function () {
  console.log('Example app listening on port ' + process.env.PORT + '!');
});