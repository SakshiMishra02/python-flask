FROM python:2
RUN apt-get update -y
RUN apt-get install -y python
RUN apt-get install -y python-pip

WORKDIR /home/sakshi_a_mishra/python-flask

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . /home/sakshi_a_mishra/python-flask/main.py

CMD [ "./main.py" ]
