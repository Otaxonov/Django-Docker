# Use the official Python image from Docker Hub
FROM python:3.13-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app/

# Install dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Django will run on
EXPOSE 8000

# Run Django's development server on container startup
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
