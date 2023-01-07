#Docker image for bank app
FROM python:3-alpine

WORKDIR /app

COPY . .

RUN python -m pip install --upgrade pip

RUN pip install flask jwt

#RUN pip install flask pyjwt pysqlite3

CMD ["python3", "./server.py"]

EXPOSE 5000
