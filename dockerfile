FROM python:3.9-alpine
ENV PYTHONUNBUFFERED 1
ARG DEV=false
COPY ./app /src/app
WORKDIR /src/app
COPY requirements.txt /tmp/requirements.txt
COPY requirements.dev.txt /tmp/requirements.dev.txt
RUN if [ "$DEV" = "true"  ]; \
        then pip install -r /tmp/requirements.dev.txt ; \
    fi \
    && pip install -r /tmp/requirements.txt && rm -rf /tmp