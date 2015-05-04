var http = require('http')
var serverPort = process.env['SERVER_PORT'] || 80
var server = http.createServer(handler)

function handler(req, res){
  res.end('hello world')
}

server.listen(serverPort, function(){
  console.log('server listening on port: ' + serverPort)
})