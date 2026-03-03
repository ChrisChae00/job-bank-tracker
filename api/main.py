from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from api.config import get_settings
from api.routers import jobs

settings = get_settings()

app = FastAPI(
    title=settings.PROJECT_NAME,
    version="1.0.0",
    docs_url="/docs",
    redoc_url="/redoc",
)

# CORS middleware – allow Streamlit and other frontends to call the API
app.add_middleware(
    CORSMiddleware,
    allow_origins=settings.CORS_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Register routers
app.include_router(jobs.router, prefix=settings.API_V1_PREFIX)


@app.get("/health", tags=["health"])
def health_check():
    """Simple health-check endpoint."""
    return {"status": "healthy"}
