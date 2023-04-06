# syntax = docker/dockerfile:latest

FROM python:3.11.3-alpine3.17

LABEL mainainer='modem7'

ENV PYTHONUNBUFFERED='1'
ENV PIP_ROOT_USER_ACTION='ignore'

COPY requirements.txt /

RUN <<EOF
    set -xe
    python3 -m pip install --no-cache-dir -U \
      setuptools \
      pip \
      wheel
    python3 -m pip install --no-cache-dir -U -r requirements.txt
    rm requirements.txt
EOF

CMD ["dumb-pypi"]
