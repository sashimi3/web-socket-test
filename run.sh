#!/bin/bash
apt-get install nodejs npm
ln -s /usr/bin/nodejs /usr/local/bin/node
npm config set registry http://registry.npmjs.org/
npm install ws

cat << EOS > server.js
console.log("Server started");
var Msg = '';
var WebSocketServer = require('ws').Server
    , wss = new WebSocketServer({port: 8010});
    wss.on('connection', function(ws) {
        ws.on('message', function(message) {
        console.log('Received from client: %s', message);
        ws.send('Server received from client: ' + message);
    });
 });
EOS

node server.js
