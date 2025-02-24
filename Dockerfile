# Use the Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the app files
COPY app /app

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Ensure Flask is installed explicitly
RUN pip install --no-cache-dir flask werkzeug==2.0.3  # Pin werkzeug to avoid compatibility issues

# Expose the Flask app port
EXPOSE 5000

# Set environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=production

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
