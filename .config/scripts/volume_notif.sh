vol=$(pactl list sinks | awk '/Volume/ {print $5}' | head -n1)

notify-send "Volume :"$vol
