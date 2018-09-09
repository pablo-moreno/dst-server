#!/bin/bash

cluster_name="Server"
steam_dir="/steamcmd"
install_dir="/dst"

cd "$steam_dir"
./steamcmd.sh +login anonymous 343050 validate +quit

cd "$install_dir/bin"
./dontstarve_dedicated_server_nullrenderer -console -cluster "$cluster_name" -shard Master &
./dontstarve_dedicated_server_nullrenderer -console -cluster "$cluster_name" -shard Caves
