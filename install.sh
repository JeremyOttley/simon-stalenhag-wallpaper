#! /bin/sh

sudo cp stalenhag.rb /usr/local/bin/stalenhag
sudo cp -p systemd/* /etc/systemd/user
systemctl enable --user stalenhag.timer
systemctl start --user stalenhag.timer
