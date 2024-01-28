docker run -d -t -i \
-e INFLUX_HOST=http://myinfluxdb:8086 \
-e INFLUX_TOKEN=********** \
-e INFLUX_ORG=testorg \
-e INFLUX_BUCKET=test \
-e SPEEDPORT_HOSTNAME=speedport.ip \
-e SPEEDPORT_PORT=443 \
-e SPEEDPORT_PROTOCOL=https \
-e SPEEDPORT_KEY=cdc0cac1280b516e674f0057e4929bca84447cca8425007e33a88a5cf598a190 \
-e SPEEDPORT_FORMAT=json \
--mount type=bind,source="./telegraf.conf",target=/etc/telegraf/telegraf.conf,readonly \
--name telegraf-speedport telegraf-speedport

