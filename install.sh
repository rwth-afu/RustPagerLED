#!/bin/bash
echo "Must be run as root. Try sudo just in case!"

cp unipagerled.py /usr/local/bin/unipagerled.py
cp config.py.example /etc/unipagerledconfig.py
mkdir -p /usr/local/lib/systemd/system
cp unipagerled.service /usr/local/lib/systemd/system/unipagerled.service
systemctl daemon-reload

systemctl start unipagerled.service
systemctl enable unipagerled.service

echo "Install completed. Edit /etc/unipagerled.py according to your needs and run"
echo "sudo systemctl restart unipagerled.service"
echo "to make your changed active."

