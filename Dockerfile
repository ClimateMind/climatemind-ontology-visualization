FROM python:3.8.5-slim-buster

RUN mkdir /usr/share/man/man1/
RUN apt-get update
RUN apt-get -y install graphviz pkg-config git

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

WORKDIR /app
COPY . .
ENTRYPOINT ["python", "visualize.py"]
