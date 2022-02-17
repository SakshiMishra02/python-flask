FROM python:2

WORKDIR /usr/src/python-flask

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install python-flask

COPY --from=0 /python/bin/python-flask .

ENV PORT 8080
CMD ["./python-flask" ]
