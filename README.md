# ksdn117/web-socket-test
Docker-image for WebSocket connectivity test.

## How to
### Start contaienr
```bash
$ docker run -p 8010:8010 --name web-socket-test ksdn117/web-socket-test
```

### Connect to container with WebSocket
```bash
$ sudo npm install wscat
$ ./node_modules/ws/bin/wscat --connect ws://$(CONTAINER_HOST_IP_ADDRESS):8010

connected (press CTRL+C to quit)
> Hello world

< Server received from client: Hello world
>
```

### Check your container log
```javascript
npm info ok
Server started
Received from client: Hello world
```
It works!!!
