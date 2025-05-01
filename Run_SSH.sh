#!/bin/bash

# IP-адреса виртуальных машин
VM1="192.168.0.11"
VM2="192.168.0.20"
VM3="192.168.0.42"

# Открываем три новых окна терминала и подключаемся к каждой виртуальной машине по SSH
gnome-terminal -- bash -c "ssh userx@$VM1; exec bash" &
gnome-terminal -- bash -c "ssh userx@$VM2; exec bash" &
gnome-terminal -- bash -c "ssh userx@$VM3; exec bash" &

# Ожидаем завершения всех процессов
wait
