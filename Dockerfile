FROM python:2

WORKDIR /usr/src/python-flask

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD ["./python-flask" ]
