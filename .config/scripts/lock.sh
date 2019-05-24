TEMP=/tmp/tmplock.png
scrot $TEMP
convert -scale 10% -filter Gaussian -blur 0x0.025 -resize 1000% $TEMP $TEMP

i3lock -i $TEMP 
rm $TEMP
