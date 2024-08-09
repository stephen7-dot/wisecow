# Use Debian base images
FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y \
    cowsay \
    fortune-mod \
    netcat-openbsd \
    bash && \
    apt-get clean


# Copy script to container
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make script executable
RUN chmod +x /usr/local/bin/wisecow.sh


# Expose port 4499
EXPOSE 4499

# Set the entrypoint to the script (adjust if necessary)
ENTRYPOINT ["/usr/local/bin/wisecow.sh"]

