# Use the official pgAdmin image from Docker Hub
FROM dpage/pgadmin4:latest

# Security Notice:
# Do NOT hardcode PGADMIN_DEFAULT_EMAIL or PGADMIN_DEFAULT_PASSWORD in this Dockerfile.
# Pass credentials at container runtime using docker run or docker-compose:
#
# Example with docker run:
#   docker run -e PGADMIN_DEFAULT_EMAIL=<your_email> \
#              -e PGADMIN_DEFAULT_PASSWORD=<your_secure_password> ...
#
# Example with docker-compose.yml:
#   environment:
#     PGADMIN_DEFAULT_EMAIL: ${PGADMIN_DEFAULT_EMAIL}
#     PGADMIN_DEFAULT_PASSWORD: ${PGADMIN_DEFAULT_PASSWORD}
#
# For production deployments, use secrets management or the Edge Applications
# Marketplace configuration interface to supply credentials securely.

# PGADMIN_DEFAULT_EMAIL and PGADMIN_DEFAULT_PASSWORD must be provided at runtime
# These are required environment variables for pgAdmin to start

ENV PGADMIN_LISTEN_PORT=5050
ENV PGADMIN_DISABLE_POSTFIX=1

# Expose the alternative port for pgAdmin
EXPOSE 5050

# Define the volume for pgAdmin data
VOLUME ["/var/lib/pgadmin"]

# Start pgAdmin on the alternative port
CMD ["python3", "/pgadmin4/web/pgAdmin4.py", "--port=5050"]
