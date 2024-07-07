SUN=
MOON=
FILE="/tmp/waybar-night-mode"

if [[ ! -f "/tmp/waybar-night-mode" ]]; then
  echo $SUN | tee $FILE
  exit 0
fi

RES=$(cat "/tmp/waybar-night-mode")

if [ $RES == $SUN ]; then
  hyprshade on blue-light-filter
  echo $MOON | tee $FILE
else
  hyprshade off
  echo $SUN | tee $FILE
fi
