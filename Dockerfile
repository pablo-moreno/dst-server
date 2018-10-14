FROM ubuntu:18.04

# Dependencies
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y wget libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386

# Download and install steamcmd
RUN mkdir /steamcmd && cd /steamcmd && wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && tar -xvzf steamcmd_linux.tar.gz && cd ..
RUN ./steamcmd/steamcmd.sh +force_install_dir /dst +login anonymous +app_update 343050 validate +quit
ADD dedicated_server_mods_setup.lua /dst/mods/

# Prepare cluster
ADD cluster /root/.klei/DoNotStarveTogether/Server
ADD cluster_token.txt /root/.klei/DoNotStarveTogether/Server/

# Set working directory
WORKDIR /root
ADD dst.sh .

# Entrypoint
ENTRYPOINT ["sh", "dst.sh"]
