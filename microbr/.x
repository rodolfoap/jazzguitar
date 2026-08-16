case "$1" in
e)	vi -p .x
	;;
b)	docker build -t wine-brwc .
	;;
"")	rsync -va --delete /home/rap/BRC/ /home/rap/BOSS/BOSS/
	docker run --rm -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:ro" -v "$PWD":/app wine-brwc bash
	;;
esac
