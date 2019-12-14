lal="\033[91m"
bulu="\033[94m"
hara="\033[92m"
pila="\033[93m"
image="figlet"
rang="toilet -f term -F gay"
$image MBOMB | $rang
echo
cd ~/MBOMB-V2
#cp -f req* $PREFIX
#chmod 777 $PREFIX/req*
cd $PREFIX/bin
if [ -e figlet ];then
echo
else
apt update
apt upgrade
apt install figlet
apt install toilet
apt install curl
apt install python
cd ~/MBOMB-V2
pip install -r requiremen*
clear
fi
if [ -e M ];then
echo
else
cd ~/MBOMB-V2
pip install -r requiremen*
echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/M
echo "cd ~/MBOMB-V2" >> $PREFIX/bin/M
echo "bash MBOMB.sh" >> $PREFIX/bin/M
chmod 777 $PREFIX/bin/M
printf "\n\n Now you can start this command :- M "
sleep 3
read
fi
clear
$image TBomb | $rang
call () {
	cd ~/MBOMB-V2
	python3 .bomb.py call
	}
	sms () {
		cd ~/MBOMB-V2
		python3 .bomb.py
		}
		MB () {
			printf "\nInvalid Option !!!\n"
			sleep 0.60
			M
			}
echo
printf "$hara	[ 1 ]$pila Call bomber\n"
printf "$hara	[ 2 ]$pila Sms bomber\n"
printf "$hara	[ 3 ]$lal Exit\n"
echo
printf %s"Select "
read a
case $a in
1)call ;;
2)sms ;;
3)exit 0 ;;
*)MB ;;
esac