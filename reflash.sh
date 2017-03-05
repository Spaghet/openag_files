#!/bin/bash

set -e

sudo systemctl stop openag.service
openag db load_fixture ./aquaponics_fixture.json
rosrun openag_brain flash
sudo systemctl start openag.service


