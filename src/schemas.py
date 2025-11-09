"""Data Transfer Objects (DTOs) for API requests and responses."""

from pydantic import BaseModel


class MessageResponse(BaseModel):
    """Response model for message endpoints."""

    message: str


class HealthResponse(BaseModel):
    """Response model for health check endpoint."""

    status: str


# Example request DTO (uncomment and use as needed):
# class CreateItemRequest(BaseModel):
#     """Request model for creating an item."""
#
#     name: str
#     description: str | None = None
#
#
# class ItemResponse(BaseModel):
#     """Response model for item endpoints."""
#
#     id: int
#     name: str
#     description: str | None = None
