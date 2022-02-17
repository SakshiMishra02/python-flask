FROM python:2
RUN apt-get update -y
RUN apt-get install -y python
RUN apt-get install -y python-pip

WORKDIR /python/src/python-flask

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . /python-flask

CMD [ "./python-flask" ]
