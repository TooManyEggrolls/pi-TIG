# pi-TIG
Telegraf, InfluxDB, and Grafana

# Sample Data
    $ influx -precision rfc3339
    Connected to http://localhost:8086 version 1.4.x
    InfluxDB shell 1.4.x
    > CREATE DATABASE NOAA_water_database
    > exit

    $ curl https://s3.amazonaws.com/noaa.water-database/NOAA_data.txt -o NOAA_data.txt
    $ influx -import -path=NOAA_data.txt -precision=s -database=NOAA_water_database

# Test Sample Data
influx -precision rfc3339 -database NOAA_water_database

# Graph Sample Data with Grafana
Import 'NOAA Sample Data.json'
