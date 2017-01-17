const execFile = require('child_process').execFile;
const child = execFile('/app/bin/app.exe', [], function(error, stdout, stderr) {
  if (error) {
    console.error('stderr', stderr);
    throw error;
  }
  console.log('stdout', stdout);
});
