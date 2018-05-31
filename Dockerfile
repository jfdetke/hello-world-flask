FROM alpine
## MAINTAINER Rajdeep Dua "dua_rajdeep@yahoo.com"
#	Ubuntu:
## RUN apt-get update -y
## RUN apt-get install -y python-pip python-dev build-essential
#Alpine
# basic flask environment
RUN apk add --no-cache bash git nginx uwsgi uwsgi-python py2-pip \
	&& pip2 install --upgrade pip \
	&& pip2 install flask

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello-world-flask.py"]
