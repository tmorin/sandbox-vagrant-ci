#!/usr/bin/env bash

set -xeo pipefail

apt-get update

apt-get install -y ebtables bridge-utils qemu qemu-kvm virtinst libvirt-clients libvirt-daemon-system

kvm-ok || true

apt-get install -y ruby-dev libvirt-dev libssl-dev
