docker volume create docker-registry-data
docker run -d -p 5003:5000 --name dev-docker-registry --mount source=docker-registry-data,target=/var/lib/registry library/registry