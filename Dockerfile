# Use an official Python runtime as a parent image
FROM python:3.6-slim

# Set the working directory to /docker/services/app
WORKDIR /docker/services/myapp

# Copy the current directory contents into the container at /app
ADD . /docker/services/myapp

# Install any needed packages specified in requirements.txt
RUN pip install -r /docker/services/myapp/requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
