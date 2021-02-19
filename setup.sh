setup() {
	cd ~/MBOMB-V2/files
	dpkg -i Random.deb
	random
	printf "\n Updating package..\n"
	apt update
	apt upgrade
	apt-get update
	apt-get upgrade
	for i in nodejs python figlet curl toilet php; do
	if [ -e $PREFIX/bin/$i ];then
	echo
	else
	random
	printf "\n Installing $i\n\n"
	random
	apt install $i || apt install --fix-broken
	apt reinstall $i
	clear
	sleep 1
	random
	printf "\n Successfully installed $i\n\n"
	fi
	done
	cd ~/MBOMB-V2/files
	dpkg -i Font.deb
	if [ -e $PREFIX/bin/python ];then
	cd ~/MBOMB-V2/php
	php install.php
	else
	cd ~/MBOMB-V2/php
	php package.php
	apt reinstall python
	cd ~/MBOMB
	0pip install -r req*
	fi
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/M
	echo "cd ~/MBOMB-V2" >> $PREFIX/bin/M
	echo "bash MBOMB.sh" >> $PREFIX/bin/M
	chmod 777 $PREFIX/bin/M
	printf "\n\n Now you can start this command :- M "
	read
	}
	setup