# Introduction

This repository holds the Dockerfile image used to build the PgAdmin application currently available the Edge Orchestration Marketplace. PgAdmin 4 is an open-source management tool for PostgreSQL databases. It provides a user-friendly interface to manage databases, run SQL queries, and perform various administrative tasks.

## Features
- **User-Friendly Interface**: Easy to navigate and manage your databases.
- **SQL Query Tool**: Write, execute, and save SQL queries.
- **Data Import/Export**: Import and export data in various formats.
- **Backup and Restore**: Easily backup and restore your databases.
- **Graphical Query Builder**: Build queries visually without writing SQL.

## Prerequisites

1. You must have both PostgreSQL and PgAdmin installed via the Edge Orchestration Marketplace.
2. Obtain the IP address assigned to the pgadmin and postgresql application during setup once online.
3. PostgreSQL must be setup within the same network (eth port).

## Use Cases
PgAdmin is intended to be used alongside PostgreSQL as its management tool. For extensive feature documentation, visit https://www.pgadmin.org/features/.

## PgAdmin Setup

### Initial Access and Configuration
1. Launch the PgAdmin Web Interface: `http://{edgeapp_ip}:5050`
![PGAdmin Web UI](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/landing_page.png?raw=true)

2. **Authentication Configuration**: PgAdmin credentials must be configured during deployment via environment variables:
   - `PGADMIN_DEFAULT_EMAIL` - Set your admin email address
   - `PGADMIN_DEFAULT_PASSWORD` - Set a secure password
   
   **Important Security Notice**: 
   - Initial credentials must be changed immediately on first login for production use
   - Use strong, unique passwords that comply with your organization's security policies
   - Credentials should never be hardcoded in documentation or configuration files
   
3. After successful login, you should reach the PgAdmin homepage.
![PGAdmin Home](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/homepage.png?raw=true)

### Connecting to PostgreSQL Database
1. To connect with your PostgreSQL database, click on **Add New Server**. Provide a descriptive name for the server connection.
![PGAdmin Register Server](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/register_server_1.png?raw=true)

2. Click on the **Connection** tab from the server registration form and configure the following:
   
   - **Host name/address**: Enter the PostgreSQL container IP address
     - Find this in the Network tab of the PostgreSQL Edge App instance
     - Example format: `<postgres_container_ip>`
   
   - **Port**: `5432` (default PostgreSQL port)
   
   - **Maintenance database**: `postgres` (default system database)
   
   - **Username**: Use the username configured during PostgreSQL deployment
     - Default is typically `postgres` unless customized
   
   - **Password**: Enter the password configured during PostgreSQL deployment
     - This should match the `POSTGRES_PASSWORD` environment variable used during setup
   
   **Security Note**: Connection credentials should be obtained from your deployment configuration or secure credential storage, not from documentation.

![PGAdmin Register Server](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/register_server_2.png?raw=true)

3. When successfully connected, you should be able to see and manage the PostgreSQL database.
![PGAdmin Register Server](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/postgres_connection.png?raw=true)

## Security Best Practices
- Change all default credentials immediately after first use
- Use strong, unique passwords for both PgAdmin and PostgreSQL connections
- Configure credentials via environment variables during deployment
- Restrict network access to PgAdmin to authorized users only
- Regularly review connected databases and user permissions
- Keep PgAdmin updated to the latest stable version
- Enable SSL/TLS connections for PostgreSQL when possible
- Audit connection logs periodically for security monitoring

## Supported Applications in the Marketplace
PgAdmin is commonly used as a management interface for PostgreSQL databases across various web applications. Keep posted on this list as more marketplace apps that are supported by PgAdmin are added.
