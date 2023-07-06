
# Installation
## Build the Jenkins Image
```
docker build -t my-jenkins .
```

## Run the Container
### MacOS / Linux
```
docker run -u 0 --privileged --name jenkins -it -d -p 8080:8080 -p 50000:50000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /home/jenkins_home:/var_jenkins_home \
  my-jenkins
```

### Windows
```
docker run -u 0 --privileged --name jenkins -it -d -p 8080:8080 -p 50000:50000 `
  -v /var/run/docker.sock:/var/run/docker.sock `
  -v /home/jenkins_home:/var_jenkins_home `
  my-jenkins
```
