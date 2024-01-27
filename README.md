# telegraf-speedport
Telegraf docker image plus Python script to fetch Sppedport Smart4 metrics.

### Usage for test purpose

* Set Environment variables in file docker_run.sh
* Execute docker_run.sh
* Metric data will be shown in your InfluxDB

### Docker-Image

An out of the box image can be found on https://hub.docker.com/repository/docker/pbdger/telegraf-speedport/general

### Simple dashboard example

This picture demonstrates the data presentation in Grafana. The related dashboard
is placed in folder grafana.

![grafana-telegraf-speedport.jpg](grafana%2Fgrafana-telegraf-speedport.jpg)