docker volume create jenkins-data
docker volume create jenkins-logs
docker run -d -p 50000:50000 -p 5001:8080 --name=dev-jenkins-master --mount source=jenkins-logs,target=/var/log/jenkins --mount source=jenkins-data,target=/var/jenkins_home jenkins/jenkins