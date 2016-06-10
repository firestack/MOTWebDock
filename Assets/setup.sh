#!/bin/bash

cd /srv/
git clone --depth=1 --branch master https://github.com/firestack/MOTAPI.git MOTAPI

cd ./MOTAPI

ln -s /etc/MOTAPI config