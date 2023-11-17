FROM python:2.7.18-alpine

WORKDIR /app

COPY . .

# 1. install package
ARG INSTALL_COMMAND="pip install -r requirements.txt"
RUN ${INSTALL_COMMAND}

## 2. run with --app argument
ENV START_COMMAND="flask run --host=0"
ENTRYPOINT ${START_COMMAND}