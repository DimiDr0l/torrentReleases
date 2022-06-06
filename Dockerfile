FROM python:3.7-alpine

WORKDIR /opt/app
RUN mkdir www && pip3 install beautifulsoup4
COPY digitalreleases.py .
ENTRYPOINT ["python3", "digitalreleases.py"]
