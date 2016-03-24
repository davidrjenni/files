#!/bin/sh

presmode on
plumber
fontsrv &
acme -a -f /mnt/font/Droid\ Sans/12a/font -l acme.dump &
xbindkeys &

while true
do
        xsetroot -name  "Bat. $(acpi -b | awk '{ print $4 " " $5 }' | tr -d ',') | Vol. $(amixer get Master | tail -1 | awk '{ print $4 }' | tr -d '[]') | $(date +"%a, %b %d %R")"
        sleep 1s
done&
exec dwm
