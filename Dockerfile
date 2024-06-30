# Use an official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# HexGL does not have a requirements.txt as it's a static site, but you might need to install dependencies for other projects.
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
# ENV NAME World

# Run python3 -m http.server when the container launches
CMD ["python3", "-m", "http.server", "8000"]