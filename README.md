# stats-example-puppet

## Usage:

### Vagrant up
```
git clone https://github.com/dennisdegreef/stats-example-puppet.git --recursive
cd stats-example-puppet
vagrant up
vagrant provision
```

### Find out the IP address of the machine
```
$ vagrant ssh-config | grep HostName | awk '{print $2}'
192.168.121.220
```

## Configure a user for Grafana in InfluxDB

![ConfigureInfluxDB](docs/create-influx-user.gif)

## Configure Grafana to connect to InfluxDB

![ConfigureGrafana](docs/configure-grafana.gif)

## Create a new dashboard and first graph
![CreateFirstDashboard](docs/create-dashboard-and-graph.gif)



