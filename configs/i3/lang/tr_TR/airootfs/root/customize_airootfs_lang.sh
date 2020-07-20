#!/usr/bin/env bash

set -e -u

# tr_TR.UTF-8 locales
sed -i 's/#\(tr_TR\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Turkey, Istanbul timezone
ln -sf /usr/share/zoneinfo/Europe/Istanbul /etc/localtime
