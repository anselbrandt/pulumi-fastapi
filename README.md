# Pulumi FastAPI

```
uv run uvicorn app.main:app --reload

docker build -t pulumi-fastapi .

docker run -d -p 8000:8000 pulumi-fastapi
```

## Deploy

- Launch EC2 instance
- Install Caddy
- `sudo systemctl stop caddy`
- Edit Caddyfile hostname and add reverse_proxy
- `sudo systemctl start caddy`
- Install docker
- Configure docker to work as non-root
- Build and run docker containe

```
chmod 600 keypair.pem

scp -i keypair.pem Dockerfile .python-version Dockerfile pyproject.toml uv.lock ubuntu@34.211.12.127 :/home/ubuntu/downloads

scp -r -i keypair.pem app static templates ubuntu@34.211.12.127  :/home/ubuntu/downloads
```
