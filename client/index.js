'use strict';

console.log('__dirname:', __dirname);

/* jshint ignore:start */
var exec = require('child_process').exec;
var execFile = require('child_process').execFile;
/* jshint ignore:end */
var spawn = require('child_process').spawn;
var fs = require('fs');

var socket = require('socket.io-client')('http://192.168.0.2:3000/');

socket.on('connect', function() {
   console.log('connected');
});

socket.on('event', function(data) {
   console.log('data', data);
});

var app = {
   process: null,
   start: function() {
      this.process = spawn('app/bin/app.exe', [], {
         stdio: 'inherit'
      });
   },
   kill: function() {
      if (this.process) {
         this.process.kill();
      }
   },
   restart: function() {
      this.kill();
      this.start();
   }
};

socket.on('restart', function(msg) {
   console.log('message: ' + msg);
   fs.exists('app/bin/app.exe', function(exists) {
      if (!exists) {
         return console.log('FILE DOES NOT EXIST!');
      }
      app.restart();
   });
});

socket.on('message', function(message) {
   console.log('message:', message);
});

socket.on('disconnect', function() {
   console.log('disconnected');
});
