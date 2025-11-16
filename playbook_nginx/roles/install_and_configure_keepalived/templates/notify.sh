#!/bin/bash

TYPE=$1
NAME=$2
STATE=$3

case $STATE in
    "MASTER")
        echo "$(date): Переход в состояние MASTER" >> /var/log/keepalived.log
        # Дополнительные действия при переходе в MASTER
        systemctl reload nginx
        ;;
    "BACKUP")
        echo "$(date): Переход в состояние BACKUP" >> /var/log/keepalived.log
        ;;
    "FAULT")
        echo "$(date): Переход в состояние FAULT" >> /var/log/keepalived.log
        ;;
    *)
        echo "$(date): Неизвестное состояние: $STATE" >> /var/log/keepalived.log
        ;;
esac