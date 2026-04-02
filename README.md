# Docker Database Project

This project creates a PostgreSQL database using Docker and automatically initializes tables and sample data using SQL scripts.

## Project Structure

docker-database-project
├── docker-compose.yml
├── README.md
└── init-db
  ├── 01_create_tables.sql
  └── 02_insert_data.sql

## Start the Database

Run the following command:

docker compose up

This will start a PostgreSQL container and automatically execute the SQL scripts to create and populate the database tables.

## Connect to the Database

docker exec -it my_project_db psql -U student -d projectdb

## View Tables

Inside PostgreSQL run:

\dt

## Stop the Container

docker compose down
