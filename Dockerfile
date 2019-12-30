FROM amazonlinux:latest

WORKDIR /app

RUN curl -s https://bootstrap.pypa.io/get-pip.py | python

COPY requirements.txt .

RUN pip install -t ./lib -r requirements.txt
