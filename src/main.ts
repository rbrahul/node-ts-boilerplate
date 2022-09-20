
const http = require('http');

const requestListener = function (req:any, res:any) {
  res.writeHead(200);
  res.end('Hello, World!');
}

const server = http.createServer(requestListener);
server.listen(3000);
