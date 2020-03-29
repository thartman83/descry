FROM python:3.6-alpine

MAINTAINER Tom Hartman thomas.lees.hartman@gmail.com

RUN apt-get update -y

COPY requirements.txt /opt/
RUN pip install -r requirements.txt

WORKDIR /opt
ADD . /opt

ENTRYPOINT ["python"]

CMD ["run.py"]
