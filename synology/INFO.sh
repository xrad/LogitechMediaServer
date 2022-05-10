#!/bin/bash
# Copyright (c) 2000-2020 Synology Inc. All rights reserved.

source /pkgscripts/include/pkg_util.sh

package="LogitechMediaServer"
version="8.2.1-1649774087"
displayname="Logitech Media Server"
os_min_ver="6.0-00000"
maintainer="xrad"
arch="$(pkg_get_platform)"
startable="yes"
description="Logitech Media Server Package"
dsmuidir="ui"
[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
