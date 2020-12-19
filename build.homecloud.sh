#!/usr/bin/env bash

set -xeo pipefail

apt-get install -y python3-virtualenv

virtualenv venv
source venv/bin/activate
pip install --upgrade setuptools
pip install -r requirements.txt
molecule test -s c1
