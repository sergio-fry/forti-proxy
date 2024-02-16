# Proxy thourgh Forti

```
docker run -it -p 8888:8888 -e FORTI_HOST=vpn.host -e FORTI_PORT=5555 -e FORTI_USER=user1 -e FORTI_PASSWOPRD=pass1 -e FORTI_CERT=C9uHTgKdNXQ2vTvRJYjjbnv996YKAhe5 -e TINYPROXY_USER=user2 -e TINYPROXY_PASSWORD=pass2 --device=/dev/net/tun:/dev/net/tun --device=/dev/ppp:/dev/ppp --cap-add=NET_ADMIN udalov/forti_proxy
```
