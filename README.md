# Docker log.io

## Get Started

```json
{
  "messageServer": {
    "host": "0.0.0.0",
    "port": 6689
  },
  "inputs": [
    {
      "source": "server1",
      "stream": "app1",
      "config": {
        "path": "/logs/server1.log"
      }
    }
  ]
}

```

```sh
docker run \
    -d \
    --name logio \
    -p 6688:6688 \
    -p 6689:6689 \
    -v `pwd`/file.json:/root/.log.io/inputs/file.json \
    -v `pwd`/logs:/logs \
    sigoden/logio 
```