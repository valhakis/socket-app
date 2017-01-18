'use strict';

/* jshint ignore:start */
var url = require("url");
/* jshint ignore:end */

var fs = require('fs');
var path = require("path");
var http = require('http');
var https = require("https");
var UrlParse = require("url-parse");

var download = function(url, dest, cb) {
   var file = null;
   var parsed = new UrlParse(url);
   var filename = GetFilename(url);

   dest += '/' + filename;

   var protocol = parsed.protocol;
   console.log("PROTOCOL: " + protocol);
   if (protocol === "http:") {
      file = fs.createWriteStream(dest);
      //var request = http.get(url, function(response) {
      http.get(url, function(response) {
         response.pipe(file);
         file.on('finish', function() {
            //file.close(cb);  // close() is async, call cb after close completes.
            file.close(function() {
               cb(null, dest);
            });
         });
      }).on('error', function(err) { // Handle errors
         fs.unlink(dest); // Delete the file async. (But we don't check the result)
         if (cb) { cb(err.message, dest); }
      });
   } else {
      file = fs.createWriteStream(dest);
      //var request = http.get(url, function(response) {
      https.get(url, function(response) {
         response.pipe(file);
         file.on('finish', function() {
            //file.close(cb);  // close() is async, call cb after close completes.
            file.close(function() {
               cb(null, dest);
            });
         });
      }).on('error', function(err) { // Handle errors
         fs.unlink(dest); // Delete the file async. (But we don't check the result)
         if (cb) { cb(err.message, dest); }
      });
   }

};

function GetFilename(url)
{
   var parsed = UrlParse(url);
   return path.basename(parsed.pathname);
}

function DownloadTexture(url, cb) {
   var dest = __root + "/app/src/textures";
   download(url, dest, function(err, file) {
      //console.log("DOWNLOADED: " + file);
      cb(err, file);
   });
}

exports.DownloadTexture = DownloadTexture;
exports.GetFilename = GetFilename;
exports.download = download;
