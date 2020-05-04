FROM python:slim

RUN apt-get update && \
    apt-get install -y npm && \
    npm install -g configurable-http-proxy && \
    pip3 install --upgrade pip && \
    pip3 install jupyterhub

CMD [ "jupyterhub" ]