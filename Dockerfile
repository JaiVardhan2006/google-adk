FROM python:3.11-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install UV
#RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Upgrade pip
RUN pip install --upgrade pip

# Install google-adk
RUN pip install google-adk