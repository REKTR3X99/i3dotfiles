wget $1 -O index.html
link=$(cat index.html | grep "og:image" | awk '{print $3}' | grep -o '"[^"]\+"' | sed 's/\"//g')
wget $link -O $2
rm -rf index.html
gpicview $2 & disown

