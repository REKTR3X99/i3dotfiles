if [[ $EUID -ne 0 ]]; then 
	echo "This script must be run as root" 
	exit 1
fi

home=/home/ajay

#Copy .Xresources
cp $home/.Xresources $home/Desktop/i3dotfiles/

#Copy wallpapers
cp -r $home/Pictures/wallpaper $home/Desktop/i3dotfiles/

#Copy Compton config 
cp $home/.config/compton.conf $home/Desktop/i3dotfiles/.config/

#Copy dunst config
cp $home/.config/dunst/dunstrc $home/Desktop/i3dotfiles/.config/dunst

#Copy i3 config
cp $home/.config/i3/config $home/Desktop/i3dotfiles/.config/i3/

#Copy polybar config
cp -r $home/.config/polybar $home/Desktop/i3dotfiles/.config/

#Copy Rofi config
cp -r $home/.config/rofi $home/Desktop/i3dotfiles/.config/

#Copy scripts
cp -r $home/.config/scripts $home/Desktop/i3dotfiles/.config/

rm  -rf $home/Desktop/i3dotfiles/.config/scripts/weather-icons
