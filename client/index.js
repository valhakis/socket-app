'use strict';

console.log('__dirname:', __dirname);

/* jshint ignore:start */
var exec = require('child_process').exec;
var execFile = require('child_process').execFile;
var execSync = require('child_process').execSync;
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
      //this.process = spawn('app/bin/app.exe', [], {
      this.process = spawn('app.exe', [], {
         cwd: 'app/bin',
         stdio: 'inherit'
      });
      var pid = this.process.pid;
      this.process.on('close', function(code) {
         console.log('APP \''+  pid + '\' CLOSED: ' + code);
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
      var touch = spawn('touch', ['app/bin/app.exe']);
      touch.on('exit', function() {
         app.restart();
      });
   });
});

socket.on('kill', function(msg) {
   console.log(msg + ' KILLING THE APPLICATION! ');
   app.kill();
   process.exit(0);
});

socket.on('message', function(message) {
   console.log('message:', message);
});

socket.on('disconnect', function() {
   console.log('disconnected');
});

/* MYSQL APP */
// ============================================

/*
var mysqlApp = {
   process: null,
   start: function() {
      this.process = spawn('app.exe', [], {
         cwd: 'app/bin',
         stdio: 'inherit'
      });
      var pid = this.process.pid;
      this.process.on('close', function(code) {
         console.log('APP \''+  pid + '\' CLOSED: ' + code);
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

socket.on('mysql-app', function(command) {
   if (command === 'start') {
      console.log('start');
   }
});
*/
