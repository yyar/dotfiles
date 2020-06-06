#!/bin/bash

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.3-amd64.deb -O /tmp/slack.deb

sudo apt install /tmp/slack.deb
rm /tmp/slack.deb
