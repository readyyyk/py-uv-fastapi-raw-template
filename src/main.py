"""Main FastAPI application."""

from fastapi import FastAPI
from dotenv import load_dotenv

from src.routes import router

load_dotenv()

app = FastAPI(title="FastAPI App", version="0.1.0")

app.include_router(router)

