# Don't Starve Together Dedicated Server: Dockerized!
## Prerequisites:

- Git
- Docker
- Docker Compose

## First installation

### Clone the repository:
```
git clone https://github.com/pablo-moreno/dst-server.git && cd dst-server
```
### Create "cluster_token.txt" file with your server token:
```
echo "yourtoken" > cluster_token.txt
```

### Set your server name, your password and your server description in cluster/cluster.ini file:
```
[NETWORK]
...
cluster_password = <yourpassword>
cluster_description = <yourdescription>
cluster_name = <yourservername>
```

### Customize your settings in cluster/(Caves|Master)/leveldataoverride.lua (See default_setup.lua)


### Build docker image
```
docker build . -t dst
```

### Run it!
```
docker run dst
```

### Or use docker-compose

```
docker-compose up
```

### Open Don't Starve Together, browse for your server and connect.

## Enjoy :)
