# Use the base image python:3.8.10-bookworm
FROM python:3.8.19-bookworm

# Set the working directory inside the container
WORKDIR /app

# Copy the coursera-dl directory into the container
COPY coursera-dl /app/coursera-dl

# Change directory to the coursera-dl folder
WORKDIR /app/coursera-dl

# Install required Python packages from requirements.txt
RUN pip install -r requirements.txt

# Change directory to the coursera-dl folder
WORKDIR /courses

ENTRYPOINT [ "/app/coursera-dl/coursera-dl" ]
CMD [ "--help" ]