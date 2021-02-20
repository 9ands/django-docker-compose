FROM python:3.8.7-slim

COPY ./requirements.txt /
COPY ./entrypoint.sh /

# Run at build
# RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

WORKDIR /app

# Execute at start
ENTRYPOINT ["sh", "/entrypoint.sh"]