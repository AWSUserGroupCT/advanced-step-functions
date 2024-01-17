FROM python:3.8-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install AWS SAM CLI
RUN pip install aws-sam-cli

# Install cfn-lint
RUN pip install cfn-lint

# Any additional setup can go here
