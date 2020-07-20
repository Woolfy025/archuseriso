#!/usr/bin/env bash

set -e -u

# RU_RU.UTF-8 locales
sed -i 's/#\(uk_UA\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Ukraine, Kiev timezone
ln -sf /usr/share/zoneinfo/Europe/Kiev /etc/localtime
