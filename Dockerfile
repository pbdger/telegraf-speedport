FROM telegraf:1.29

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y pip
#RUN apt install -y python3-flask

COPY requirements.txt /scripts/requirements.txt
COPY speedport-monitoring /scripts/speedport-monitoring

WORKDIR /scripts
RUN pip install -r requirements.txt --break-system-packages
COPY . /scripts

CMD ["telegraf"]
