#!/usr/bin/env zsh
function rword() {
	cat /usr/share/dict/words | grep -v "'" | sort -R | head -n 1 
}
function capitalize() {
	echo $(echo $1 | head -c 1 | tr 'a-z' 'A-Z')$(echo $1 | tail -c +2)
}
w=""
for i in 1 2 3 4 5 6 ; do
	w="$w$(capitalize $(rword))"
done
echo  $w
