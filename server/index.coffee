express = require 'express'
http =    require 'http'
path =    require 'path'

port = 3000
@app = express()

@app.use express.static(path.join(__dirname, '../public'))

@server = http.createServer @app
@server.listen port

console.log "Server started on port: #{port}"
