redshift -O 3500
cd /usr/lib/jellyfin-rpc/ && ./jellyfin-rpc > /dev/null &
feh --bg-fill "$(find /home/$USER/Pictures/wallpaper -type f -print | shuf -n 1)"
