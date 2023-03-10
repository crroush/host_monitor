# System Monitoring Tools

This project provides a monitoring utility for saving host information.  
Not all the features are always available on the devices, so you can customize the stack accordingly.  
The intention is this runs on a host completely self contained. 

Grafana/InfluxDB and Telegraf are fully encapsulated

You must setup nvidia runtime environment or disable configs/telegraf.conf the
nvidia-smi plugin.

InfluxDB uses the collectd typesdb file in order to know
how to read the data and logs it into the telegraf inside
of influxdb

Grafana provides visualization tools for monitoring data

## Table of Contents

   * [Prerequisites](#prerequisites)
   * [Running](#running)
   * [Debugging](#debugging)
   * [Dashboards](#dashboards)

### Prerequisites
* Linux: Tested on Ubuntu 22.04
* docker/docker-compose setup and installed for your distribution

Setup Nvidia Runtime Environment
Install the nvidia-container-runtime
Centos
```
sudo yum install nvidia-container-runtime
```
Ubuntu
```
sudo apt install nvidia-container-runtime
```

### Running

Starting
```
docker-compose up -d
```

Stopping
```
docker-compose down
```

Viewing in Grafana, replace localhost with whatever the machine
name is or IP. Default password is admin\admin then you can change
it or keep it the same on your installation
```
http://localhost:8086
```

### Debugging

Checking the logs

```
docker container logs grafana  -f
docker container logs influxdb -f
docker container logs telegraf -f
```
If you want to "start over":
```
sudo rm -rf /srv/docker/grafana
sudo rm -rf /srv/docker/influxdb
```
### Dashboards
![image](https://user-images.githubusercontent.com/9982203/224446250-f2bea84d-0738-4662-a2d5-5f7daf646c3c.png)

![image](https://user-images.githubusercontent.com/9982203/224446823-bddcf233-51f7-4745-85b5-0d20d63881be.png)

