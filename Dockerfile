# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the local directory contents to the container's /app directory
COPY . /app

# Install the necessary packages
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME PatternPy

# Clone the PatternPy repository
RUN git clone https://github.com/keithorange/PatternPy

# Navigate to the PatternPy directory (update this if the structure is different)
WORKDIR /app/PatternPy

# Command to run on container start: specify the Python script or command to run your app
CMD ["python", "your_script.py"]  # Replace 'your_script.py' with the actual script that runs your application
