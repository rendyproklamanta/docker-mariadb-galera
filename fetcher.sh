#!/bin/bash

GITHUB_TOKEN=your_personal_access_token

# Fetch the .env file from GitHub
GITHUB_RAW_URL_ENV=https://raw.githubusercontent.com/<username>/<repository>/main/.env
curl -H "Authorization: token $GITHUB_TOKEN" -o .env $GITHUB_RAW_URL_ENV
echo ".env file fetched from GitHub."

# Fetch the init.sql file from GitHub
GITHUB_RAW_URL_INIT=https://raw.githubusercontent.com/<username>/<repository>/main/initdb/01-init.sql
curl -H "Authorization: token $GITHUB_TOKEN" -o 01-init.sql $GITHUB_RAW_URL_INIT
echo "init.sql file fetched from GitHub."