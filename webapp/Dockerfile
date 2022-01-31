FROM python:slim

WORKDIR /usr/src/app
COPY . .
RUN mkdir db && \
    mkdir files && \
    pip install --no-cache-dir -r requirements.txt && \
    groupadd -r flask && useradd --no-log-init -r -g flask flask && \
    chown -R flask:flask /usr/src/app/

EXPOSE 5000/tcp

ENTRYPOINT ["./gunicorn.sh"]
