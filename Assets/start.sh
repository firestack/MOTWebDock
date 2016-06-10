#!/bin/bash

cd /srv/MOTAPI

echo "Updating From Source..."
git pull --rebase
git submodule update --init

echo "Updating depencencies..."
pip3 install -r requirements.txt

echo "Starting Web Server"
python3 MOTAPI.py
