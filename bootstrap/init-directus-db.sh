#!/bin/bash
set -e

DB_NAME=directus
DB_USER=directus
DB_PASSWORD=directus

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER $DB_USER with password '$DB_PASSWORD';
	CREATE DATABASE $DB_NAME;
	GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
	\c $DB_NAME
	CREATE EXTENSION postgis;
  	GRANT ALL ON SCHEMA public TO $DB_USER;
EOSQL