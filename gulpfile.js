'use strict';
//var spawn = require('gulp-spawn');
var gulp = require('gulp');
var path = require('path');
var shell = require('gulp-shell');


//var __root = path.join(__dirname);
var __base = path.join(__dirname + '/client/program');

gulp.task('make', shell.task([
   'make'
], {
   verbose: true,
   ignoreErrors: false,
   quiet: false,
   interactive: false,
   cwd: __base
}));

gulp.task('default', ['make'], function() {
   gulp.watch([__base + '/**/*.c', 'makefile'], ['make']);
});

