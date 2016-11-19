#!/usr/bin/env bash

if [[ $(which powerline-daemon) ]]; then
  powerline-daemon -q
  source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi
