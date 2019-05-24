updates=$(checkupdates | awk '{print $1}' | wc -l)

echo "U:$updates"
