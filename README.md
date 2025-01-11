# Pulumi FastAPI

```
uv run uvicorn app.main:app --reload

docker build -t pulumi-fastapi .

docker run -d -p 8000:8000 pulumi-fastapi
```

## Deploy

```
chmod 600 keypair.pem

scp -i keypair.pem Dockerfile .python-version Dockerfile pyproject.toml uv.lock ubuntu@34.211.12.127 :/home/ubuntu/downloads

scp -r -i keypair.pem app static templates ubuntu@34.211.12.127  :/home/ubuntu/downloads
```
