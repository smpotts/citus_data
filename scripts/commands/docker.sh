
# NOTE: the local postgres database must not be running in order to run postgres in docker

# the command to start a new docker container for citus
docker run -d --name citus -p 5432:5432 -e POSTGRES_PASSWORD=HIDDEN citusdata/citus:11.0

# the command to start the postgres database in the docker container
docker exec -it citus psql -U postgres
