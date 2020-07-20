#!/usr/bin/env bash

set -e -u

# ro_RO.UTF-8 locales
sed -i 's/#\(ro_RO\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Romania, Bucharest timezone
ln -sf /usr/share/zoneinfo/Europe/Bucharest /etc/localtime
