# flask-dockerized
hello-world-flask, inside a docker container. 

## Build it:
$ docker build -t hello-world-flask:latest .

## Run it:
$ docker run -v $PWD:/app  -p 5000:5000 hello-world-flask:latest

