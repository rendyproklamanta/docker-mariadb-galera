#!/bin/bash

docker compose -f docker-compose.master.yml up -d

sleep 20

docker compose -f docker-compose.galera1.yml up -d

sleep 20

docker compose -f docker-compose.galera2.yml up -d

sleep 20

docker compose -f docker-compose.galera3.yml up -d

sleep 20

docker compose -f docker-compose.services.yml up -d