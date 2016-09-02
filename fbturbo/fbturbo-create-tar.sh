#!/bin/sh
set -e

sudo mv ${1}/xorg.conf /usr/share/X11/xorg.conf.d/99-fbturbo.conf

sudo tar cvfz fbturbo.tar.gz \
  /usr/lib/xorg/modules/drivers/fbturbo_drv.so \
  /usr/lib/xorg/modules/drivers/fbturbo_drv.la \
  /usr/share/man/man4/fbturbo.4 \
  /usr/share/X11/xorg.conf.d/99-fbturbo.conf
