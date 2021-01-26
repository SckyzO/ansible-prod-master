function list_docker()  {
	ps aux | grep docke[r] >/dev/null 2>&1
	[ $? -eq 1 ] && echo "Warn: Docker daemon is stop!"
	echo -ne "\033[32mAlive:\n "
	docker ps -f status=running | awk 'NR!=1{ORS=" ";print $NF}'
	echo -ne "\033[0m"
	echo -ne "\n\033[31mDead:\n "
	docker ps -f status=exited | awk 'NR!=1{ORS=" ";print $NF}'
	echo -ne "\033[0m"
	echo
}
groups | grep -E &>/dev/null '\bdocker\b'
if [ $?=0 -o x$USER == "xroot" ]; then
	list_docker
fi
