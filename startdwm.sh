while true; do
	xsetroot -name "Vol. $(awk '/dB/ { gsub(/[\[\]]/,""); print $5}' <(amixer get Master)) \
 	| $(date +"%a, %b %d %R")"
	sleep 1
done &

#Start DWM
while true; do
	dwm 2> ~/.dwm.log
done
