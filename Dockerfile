FROM python:3.12-slim-bullseye

# Install uv.
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

COPY . /app

WORKDIR /app
RUN uv sync --frozen --no-cache

ENV ENV_MODE="PROD"
ENV HOST="https://anselbrandt.ca"
CMD ["/app/.venv/bin/uvicorn", "app.main:app","--port", "8000", "--host", "0.0.0.0"]
