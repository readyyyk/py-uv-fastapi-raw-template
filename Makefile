.PHONY: help dev start install docker-build docker-up docker-down

.DEFAULT_GOAL := help

help: ## Show this help message
	@echo "Available commands:"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'
	@echo ""

install: ## Install project dependencies
	uv sync

dev: ## Run development server with auto-reload
	uv run uvicorn src.main:app --reload --host 0.0.0.0 --port $${PORT:-8000}

start: ## Run production server
	uv run uvicorn src.main:app --host 0.0.0.0 --port $${PORT:-8000}

docker-build: ## Build Docker image
	docker-compose build

docker-up: ## Start Docker containers
	docker-compose up -d

docker-down: ## Stop Docker containers
	docker-compose down
