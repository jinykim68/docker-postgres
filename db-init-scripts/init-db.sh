#!/bin/sh
set -e

DATABASE_ADMIN_USERNAME="jinyoungk"
DATABASE_ADMIN_PASSWORD="password"
DATABASE_NAME="jinyoungk"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE USER $DATABASE_ADMIN_USERNAME WITH PASSWORD '$DATABASE_ADMIN_PASSWORD';
	CREATE DATABASE $DATABASE_NAME;
	GRANT ALL PRIVILEGES ON DATABASE $DATABASE_NAME TO $DATABASE_ADMIN_USERNAME;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$DATABASE_NAME" <<-EOSQL
	CREATE EXTENSION IF NOT EXISTS "btree_gin";
	CREATE EXTENSION IF NOT EXISTS "btree_gist";
	CREATE EXTENSION IF NOT EXISTS "fuzzystrmatch";
	CREATE EXTENSION IF NOT EXISTS "pg_trgm";
EOSQL