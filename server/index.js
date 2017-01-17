'use strict';

var path = require('path');
var watch = require('node-watch');
var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);

global.__base = path.join(__dirname);
global.__root = path.join(__dirname, '..');

watch([
   __root + '/'
], function(filename) {
   console.log(`file changed: '${filename}'`);
   io.emit('message', `file changed \'${filename}\'`);
});

app.use(express.static(__root + '/public'));

app.get('/restart', function(req, res){
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
