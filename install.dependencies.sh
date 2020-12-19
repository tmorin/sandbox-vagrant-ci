#!/usr/bin/env bash

set -xeo pipefail

echo "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee -a /etc/apt/sources.list.d/hashicorp.list
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
apt-get update
apt-get install -y vagrant
apt-get install -y ebtables bridge-utils qemu qemu-kvm virtinst libvirt-clients libvirt-daemon-system

kvm-ok || true

apt-get install -y ruby-dev libvirt-dev libssl-dev
vagrant plugin install vagrant-libvirt
