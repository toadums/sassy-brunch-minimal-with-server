spawn = require('child_process').spawn

exports.startServer =  (port, path, callback) ->
  server = spawn 'nodemon', ["server/index.coffee"]

  server.stdout.on 'data', (data) ->
    console.log "stdout: #{data}"

  server.stderr.on 'data', (data) ->
    console.log "stderr: #{data}"

  server.on 'close', (code) ->
    console.log "child process exited with code #{code}"
