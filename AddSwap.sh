#!/bin/bash

#Выделение места на диске
fallocate -l 2G /swapfile

#Смена прав на -rw-------
chmod 600 /swapfile

#Запуск
mkswap /swapfile
swapon /swapfile

#Добавление автозапуска
cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab

#Оптимизации
cp /etc/sysctl.conf /etc/sysctl.conf.bak
echo vm.swappiness=10 >> /etc/sysctl.conf
echo vm.vfs_cache_pressure=50 >> /etc/sysctl.conf