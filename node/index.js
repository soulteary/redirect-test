var http = require('http');

http.createServer(function (request, response) {
    response.writeHead(301, { 'Location': 'http://localhost:1024/' }).end();
}).listen(80);