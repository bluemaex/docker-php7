#!/bin/sh
set -e

if [ "$(ls -A /docker-init.d/*.sh)" ]; then
    echo
    echo "### executing container init.d files"
    for script in /docker-init.d/*.sh; do
        echo "## ${script}"
        sh ${script};
    done;
fi

echo
echo "### container entrypoint: $1"
echo
case $1 in
    "supervisor") /usr/bin/supervisord -c /etc/supervisor/supervisord.conf ;;
    *) exec "$@"
esac
