'use strict';

/* jshint ignore:start */
/* jshint ignore:end */

var bodyParser = require('body-parser');
var path = require('path');
var watch = require('node-watch');
var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);

global.__base = path.join(__dirname);
global.__root = path.join(__dirname, '..');

var common = require(__base + '/common');

//common.DownloadTexture("https://learnopengl.com/img/textures/wall.jpg");

watch([
   __root + '/'
], function(filename) {
   console.log(`file changed: '${filename}'`);
   io.emit('message', `file changed \'${filename}\'`);
});

app.use(express.static(__root + '/public'));

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.post('/downloadTexture', function(req, res) {
   //curl -H "Content-Type: application/json" -X POST -d '{"url": "https://learnopengl.com/img/textures/wall.jpg"}' http://kodu.noip.me:3000/downloadTexture
   
   var url = req.body.url;

   res.send('downloading texture');
   common.DownloadTexture(url, function(err, file) {
      console.log("DOWNLOADED: " + file);
   });
});

app.get('/restart', function(req, res) {
   io.emit('restart', 'starting restartation yo');
   res.send('you want me to restart the application ?');
});

io.on('connection', function(socket){
   console.log('new connection');
   socket.on('chat message', function(msg) {
      io.emit('chat message', msg);
   });
   socket.on('disconnect', function() {
      console.log('connection closed');
   });
});

http.listen(3000, function() {
   console.log('listening on *:3000');
});
