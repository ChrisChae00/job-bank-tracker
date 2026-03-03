from pydantic_settings import BaseSettings
from functools import lru_cache


class Settings(BaseSettings):
    """
    Application settings loaded from environment variables.
    Uses pydantic-settings to automatically read from .env file.
    """
    # Database
    DB_HOST: str
    DB_NAME: str
    DB_USER: str
    DB_PASSWORD: str
    DB_PORT: int = 5432

    # API
    API_V1_PREFIX: str = "/api/v1"
    PROJECT_NAME: str = "Job Bank Tracker API"

    # CORS
    CORS_ORIGINS: list[str] = [
        "http://localhost:8501",  # Streamlit default
        "http://localhost:3000",
    ]

    @property
    def database_url(self) -> str:
        return (
            f"postgresql://{self.DB_USER}:{self.DB_PASSWORD}"
            f"@{self.DB_HOST}:{self.DB_PORT}/{self.DB_NAME}"
        )

    class Config:
        env_file = ".env"
        env_file_encoding = "utf-8"
        extra = "ignore"


@lru_cache()
def get_settings() -> Settings:
    """Return cached settings instance (singleton)."""
    return Settings()
