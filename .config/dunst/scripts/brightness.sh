#!/usr/bin/bash
# based on fellow Nanahira enjoyer's script
# https://github.com/randomtwdude/nanadots/blob/main/dunst/scripts/brightness.sh

case "$1" in
  sc|screen)
    header="Screen Brightness"
    device="intel_backlight"
    declare -i id=5969
    ;;
  kb|keyboard) 
    header="Keyboard Brightness"
    device="white:kbd_backlight"
    declare -i id=6779
    ;;
  *)
    echo "Unknown option $1"
    notify-send -i /dev/null -a "Brightness" "Unknown option" "$1"
    exit 1
    ;;
esac

case "$2" in
  +) brightnessctl -d "$device" s 5%+;;
  -) brightnessctl -d "$device" s 5%-;;
  *) 
    echo "Unknown option $2"
    notify-send -i /dev/null -a "Brightness" "Unknown option" "$2"
    exit 1
  ;;
esac

current=$(brightnessctl -d "$device" | grep "Current" | awk -F'[()]' '{print $2}' | sed 's/%//g')

if [[ "$current" -lt "50" ]]; then
    icon="$ICON_PATH/brightness-down.svg"
else
    icon="$ICON_PATH/brightness-up.svg"
fi

dunstify -t 750 -i "$icon" -a "$header" -r "$id" -h int:value:"$current" "$current"%
