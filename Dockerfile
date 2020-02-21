FROM python:3.7

COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENV GUNICORN_CMD_ARGS="--bind=:8080"
EXPOSE 8080:8080

ENTRYPOINT [ "gunicorn", "main:APP" ]