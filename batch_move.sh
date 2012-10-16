#SAVEIFS=$IFS
#IFS=$(echo -en "\n\b")

DIR=/mnt/windows-drive/Users/Holeyshoe/Torrents/*

for d in $DIR
	do
		cd "$d"
		for f in *
			do
				mv "$f" "../"$f""
			done
	done
#IFS=$SAVEIFS
