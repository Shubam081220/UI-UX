# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

#docker build -t flask-email-app .
#docker run -p 4000:80 flask-email-app
