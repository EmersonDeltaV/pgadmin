# Use the official pgAdmin image from Docker Hub
FROM dpage/pgadmin4:latest

# Set environment variables for pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=edge_admin@emerson.com
ENV PGADMIN_DEFAULT_PASSWORD=Emerson#123
ENV PGADMIN_LISTEN_PORT=5050
ENV PGADMIN_DISABLE_POSTFIX=1

# Expose the alternative port for pgAdmin
EXPOSE 5050

# Define the volume for pgAdmin data
VOLUME ["/var/lib/pgadmin"]

# Start pgAdmin on the alternative port
CMD ["python3", "/pgadmin4/web/pgAdmin4.py", "--port=5050"]