# Como rodar com docker
```
docker run -ti -p 9200:9200 -p 9300:9300 --hostname nfeminer --rm nfeminer
```
# Como rodar com docker compose
```
version: '3.5'
services:
  nfeminer:
    image: arthurd2/nfeminer
    hostname: nfeminer
    ports: 
      - 9200:9200
      - 9300:9300
```
