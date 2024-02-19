# Pull base image
FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /djangoPost

# Install dependencies
COPY Pipfile Pipfile.lock /djangoPost/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /djangoPost/

