FROM mysql:8.0

COPY init-db/ /docker-entrypoint-initdb.d/
