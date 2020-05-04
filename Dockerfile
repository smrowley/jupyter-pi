FROM python:slim

RUN apt-get update && \
    apt-get install -y npm && \
    npm install -g configurable-http-proxy && \
    apt-get remove -y npm && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove && \
    pip3 install --upgrade pip && \
    pip3 install jupyterhub

CMD [ "jupyterhub" ]