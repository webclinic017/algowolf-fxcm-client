# Use the Python3.7.2 container image
FROM python:3.7.2-stretch

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install the dependencies
RUN pip install -r requirements.txt
RUN pip install forexconnect-1.6.3-py3-none-any.whl

# run the command to start Python
CMD ["python", "run.py"]