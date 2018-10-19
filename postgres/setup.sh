docker volume create postgres-data
docker run -d -p 5002:5432 --name=dev-postgres --mount source=postgres-data,target=/var/lib/postgresql -e POSTGRES_PASSWORD=defpassword postgres