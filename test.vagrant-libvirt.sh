#!/usr/bin/env bash

set -xeo pipefail

cd source && vagrant up

cd source && vagrant ssh -c env

cd source && vagrant destroy -f
