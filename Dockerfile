FROM python:3
RUN mkdir /var/connections
WORKDIR /var/connections
COPY requirements.txt /var/connections
RUN pip install -r requirements.txt
COPY . /var/connections
