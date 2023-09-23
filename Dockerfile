# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 8000 for uWSGI
EXPOSE 8000

# Start uWSGI
CMD ["uwsgi", "--ini", "myapp.ini"]
