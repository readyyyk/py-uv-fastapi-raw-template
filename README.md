# Template for Python UV FastAPI project

A minimal FastAPI project template using UV for dependency management, Docker for containerization

## Features

- FastAPI, UV, Docker, Docker Compose
- Makefile with common commands
- Module structure with `src/` directory
- Automatic Python version management (3.11)
- Automatic virtual environment management

## Prerequisites

- [UV](https://github.com/astral-sh/uv) - Install with: `curl -LsSf https://astral.sh/uv/0.9.6/install.sh | sh`
- Docker and Docker Compose (optional)

**Note:** UV automatically installs Python 3.11 if needed. No separate Python installation required.

## Installation

1. Install dependencies (UV will automatically create `.venv` and install Python 3.11 if needed):

```bash
make install
# or: uv sync
```

2. Copy environment file:

```bash
cp .env.example .env
```

## Usage

### Development

```bash
make dev
# API available at http://localhost:8000
# Docs at http://localhost:8000/docs
```

### Production

```bash
make start
```

### Docker

```bash
make docker-build && make docker-up
# or: docker-compose up --build
```

## Available Commands

Run `make` or `make help` to see all available commands.

- `make help` - Show all available commands
- `make install` - Install dependencies
- `make dev` - Development server with auto-reload
- `make start` - Production server
- `make docker-build` - Build Docker image
- `make docker-up` - Start containers
- `make docker-down` - Stop containers

## Virtual Environment

UV automatically manages virtual environments:
- Creates `.venv/` automatically on `uv sync`
- Uses correct Python version from `.python-version`
- No manual activation needed - `uv run` handles it

## Development

Add routes in `src/routes.py` or create new route files. Run tests with `uv run pytest` and lint with `uv run ruff check .`
