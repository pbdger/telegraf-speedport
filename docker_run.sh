docker run -d -t -i \
-e INFLUX_HOST=http://myinfluxdb:8086 \
-e INFLUX_TOKEN=********** \
-e INFLUX_ORG=testorg \
-e INFLUX_BUCKET=test \
-e SPEEDPORT_URL=https://speedport.ip \
--mount type=bind,source="./telegraf.conf",target=/etc/telegraf/telegraf.conf,readonly \
--name telegraf-speedport pbdger/telegraf-speedport:1.2.1

