FROM python:3.11-slim

RUN pip install uv==0.9.6

WORKDIR /app

COPY uv.lock pyproject.toml ./

# Sync dependencies based on the lockfile (no dev deps)
RUN uv sync --frozen --no-dev

COPY . .

EXPOSE 8000

CMD ["sh", "-c", "uv run uvicorn src.main:app --host 0.0.0.0 --port 8000"]
