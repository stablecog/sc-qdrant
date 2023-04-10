# sc-qdrant

QDrant docker-compose deployment with basic auth/nginx proxy

# Usage

First create a passwd file for auth

```bash
htpasswd -b -c .htpasswd qdrant mypassword
```

Then start container with

```
INITIAL_PEER=http://peer:6335 docker-compose up
```

Or for a second+ peer

```
BOOTSTRAP_PEER=http://peer_1:6335 docker-compose up
```
