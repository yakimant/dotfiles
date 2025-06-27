#!/usr/bin/env bash

echo "= procs:"
ps aux | grep office | grep -v fix_yabai | grep -v yabairc | grep -v "(yabai)" | grep -e [y]abai -e [s]khd

echo
echo "= services:"
launchctl list | grep -e yabai -e skhd -e PID

echo
echo "= stopping"

skhd --stop-service
skhd --uninstall-service
skhd --install-service

yabai --stop-service
yabai --uninstall-service
yabai --install-service

echo
echo "= procs:"
ps aux | grep office | grep -v fix_yabai | grep -v yabairc | grep -v "(yabai)" | grep -e [y]abai -e [s]khd

echo
echo "= services:"
launchctl list | grep -e yabai -e skhd -e PID

echo
echo "= starting"

yabai --start-service
sudo yabai --load-sa
skhd --start-service

echo
echo "= yabairc"
sleep 1
~/.config/yabai/yabairc

echo
echo "= procs:"
ps aux | grep office | grep -v fix_yabai | grep -v yabairc | grep -v "(yabai)" | grep -e [y]abai -e [s]khd

echo
echo "= services:"
launchctl list | grep -e yabai -e skhd -e PID
