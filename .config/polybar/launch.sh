#!/usr/bin/env bash

killall -q polybar

polybar -c ~/.config/polybar/config.ini main
