# docker-postgres

Example *docker-compose.yml* for **PostgreSQL**

## Getting Started

### Prerequisites

*Docker Engine* needs to be installed on your machine ([Docker Documentation](https://docs.docker.com/)).

### Environment variables

| Variable               | Description                                                               |
| ---------------------- | ------------------------------------------------------------------------- |
| `HOST_PORT`            | Set the port of host machine                                              |
| `HOST_DB_INIT_SCRIPTS` | Set the location of initialization scripts in the host machine            |
| `PGDATA`               | Set the location of database files (default: `/var/lib/postgresql/data`)  |
| `POSTGRES_USER`        | Set the superuser's username (default: `postgres`)                        |
| `POSTGRES_PASSWORD`    | Set the superuser's password                                              |
| `POSTGRES_DB`          | Define a name of default database (default: the value of `POSTGRES_USER`) |

### Get it running

```bash
docker-compose up -d
```

## References

* [Postgres official docker image](https://hub.docker.com/_/postgres)
* [Github docker-library issues](https://github.com/docker-library/postgres/issues)
