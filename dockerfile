FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install Flask directly
RUN pip install flask

# Specify the command to run the application
CMD ["python", "app.py"]
