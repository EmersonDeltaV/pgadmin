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
1.	Launch the PgAdmin Web Interface: `http://{edgeapp_ip}:5050`.
![PGAdmin Web Ui](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/landing_page.png?raw=true)
2. To log in use the default username/email:*`edge_admin@emerson.com`* and password:*`Emerson#123`*. This should land you on the homepage of PgAdmin.
![PGAdmin Home](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/homepage.png?raw=true)
3. To connect with your PostgreSQL database created during application deployment, click on `Add New Server`. Fill in a name for the server.
![PGAdmin Register Server](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/register_server_1.png?raw=true)
4. Click on the `Connection` tab from the server registration form. Fill in host name / address with the postgresql IP address assigned to the container when deployed. You can find this under the Network tab of the Edge App instance. Use `5432` for the port. For the maintenance database, use `postgres`. For the username, the default is `postgres` and the default password is `Emerson#123`.
![PGAdmin Register Server](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/register_server_2.png?raw=true)
5. When connected, you should be able to see the database.
![PGAdmin Register Server](https://github.com/EmersonDeltaV/pgadmin/blob/main/assets/postgres_connection.png?raw=true)

## Supported Applications in the Marketplace
PostgreSQL is commonly used as a database for a number of web applications. Keep posted on this list as more marketplace apps that are supported by PostgreSQL are added.
