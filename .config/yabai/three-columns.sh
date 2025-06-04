#!/usr/bin/env sh

windows=$(yabai -m query --windows --display 1 | jq '[.[] | select(."is-visible"==true and ."is-floating"==false)] | length')

if [[ $windows == 1 ]]; then
  #yabai -m config left_padding 1000
  #yabai -m config right_padding 1000
  yabai -m space --padding abs:12:12:1147:1147
  yabai -m space --balance
elif [[ $windows == 2 ]]; then
  #yabai -m config left_padding 500
  #yabai -m config right_padding 500
  yabai -m space --padding abs:12:12:573:573
  yabai -m space --balance
elif [[ $windows == 3 ]]; then
  #yabai -m config left_padding 1200
  #yabai -m config right_padding 1200
  yabai -m space --padding abs:12:12:12:12
  #yabai -m window --toggle split
  yabai -m space --balance
fi
