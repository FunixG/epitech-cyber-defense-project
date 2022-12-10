#Docker image for bank app
FROM python:3-alpine

COPY . .

RUN python -m pip install --upgrade pip

RUN pip3 install flask pyjwt pysqlite3

CMD ["python3", "./server.py"]

EXPOSE 5000
