#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE USER miniflux PASSWORD '${MF_PASSWORD}';
  CREATE DATABASE miniflux OWNER miniflux;
  GRANT ALL PRIVILEGES ON DATABASE miniflux TO miniflux;

  CREATE USER linkding PASSWORD '${LD_PASSWORD}';
  CREATE DATABASE linkding OWNER linkding;
  GRANT ALL PRIVILEGES ON DATABASE linkding TO linkding;
EOSQL
