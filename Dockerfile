# syntax = docker/dockerfile:1

FROM python:3.11.0b5-alpine3.16

ENV PYTHONUNBUFFERED 1

COPY requirements.txt /

RUN set -ex \
    && apk upgrade --no-cache \
    && python3 -m pip install --no-cache-dir --upgrade --upgrade-strategy='eager' \
        'setuptools' \
        'pip' \
        'wheel' \
    && python3 -m pip install --no-cache-dir -r 'requirements.txt' \
    && rm 'requirements.txt'

CMD ["dumb-pypi"]
