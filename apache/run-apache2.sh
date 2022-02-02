#!/usr/bin/env bash

sed -i "s/Listen/Listen ${PORT:-80}/g" /etc/apache2/ports.conf
apache2-foreground "$@"