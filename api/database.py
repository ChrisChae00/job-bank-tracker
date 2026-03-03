from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, Session, DeclarativeBase
from api.config import get_settings
from typing import Generator

settings = get_settings()

engine = create_engine(
    settings.database_url,
    pool_pre_ping=True,   # Verify connections before using them
    pool_size=5,
    max_overflow=10,
)

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)


class Base(DeclarativeBase):
    """Declarative base for ORM models."""
    pass


def get_db() -> Generator[Session, None, None]:
    """
    FastAPI dependency that provides a DB session per request.
    Automatically closes the session when the request is done.
    """
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
