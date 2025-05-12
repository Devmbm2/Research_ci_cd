# Use official Python image as the base image
FROM python:3-slim

# Set the working directory inside the container
WORKDIR /app

# Copy local files into the container
COPY calc.py test_calc.py requirements.txt ./

# Install dependencies (pip)
RUN pip install --no-cache-dir -r requirements.txt

# Default command (can be overridden at runtime)
CMD ["python", "-m", "unittest", "test_calc.py"]