# Use official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy your project files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Optional: Run notebook or script (replace with your entrypoint script)
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
