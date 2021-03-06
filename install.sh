#!/bin/bash

#Install InfluxDB as of 3/22/20 this is v.1.7.10
curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -
echo "deb https://repos.influxdata.com/debian buster stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt update &> /dev/null
sudo apt install influxdb -y &> /dev/null
sudo systemctl enable influxdb
sudo systemctl start influxdb

#Install Telegraf as of 3/22/20 this is v.1.13.3
sudo apt install telegraf -y &> /dev/null

#Install Grafana 6.7.1 & dependencies
sudo apt install fontconfig-config fonts-dejavu-core libfontconfig1 -y
wget https://dl.grafana.com/oss/release/grafana_6.7.1_armhf.deb
sudo dpkg -i grafana_6.7.1_armhf.deb
rm grafana_6.7.1_armhf.deb
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
