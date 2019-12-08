#!/bin/sh
useradd -u 0 root
usermod -a -G sudo root 2>/dev/null || :
usermod -a -G wheel root 2>/dev/null || :
usermod -a -G adm root 2>/dev/null || :
export HOME=/home/root
exec chroot --userspec=root / $@
