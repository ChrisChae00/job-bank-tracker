# Use the official Python 3.11 image as the base
FROM python:3.11-slim

# Install system dependencies (chromium is used for selenium)
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory 
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Create data directory for database
RUN mkdir -p data

# Copy the rest of the application code
COPY . .

# Run the application
CMD ["python", "main.py"]