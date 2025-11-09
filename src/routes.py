from fastapi import APIRouter

from src.schemas import HealthResponse, MessageResponse

router = APIRouter()


@router.get("/")
async def root() -> MessageResponse:
    """Root endpoint."""
    return MessageResponse(message="Hello World")


@router.get("/health")
async def health() -> HealthResponse:
    """Health check endpoint."""
    return HealthResponse(status="ok")
