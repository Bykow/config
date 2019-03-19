#!/bin/env sh

killall polybar

polybar i3wmthemer_bar &
ln -s /tmp/polybar_mqueue.$! /tmp/ipc-bottom
polybar i3wmthemer_barsecond &

echo message >/tmp/ipc-bottom
