"""Routes for the application."""
from fastapi import FastAPI


def routes(app: FastAPI):
    @app.get("/")
    async def read_root():
        return {"Hello": "World"}
