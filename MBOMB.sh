setup() {
	cd ~/MBOMB-V2
	bash setup.sh
	}
	
	banner() {
		if [ -e $PREFIX/share/figlet/font.flf ];then
		cd ~/MBOMB-V2
		cd php
		php banner.php
		cd ~/MBOMB-V2
		cd javascript
		node enter.js
		fi
		}
		fol() {
			cd ~/MBOMB-V2/php
			}
		sms() {
			#fol
			python3 ~/.bomb.py
			#php sms.php
			}
			call () {
				python3 ~/.bomb.py call
				#php call.php
				}
		menu () {
			banner
			cd ~/MBOMB-V2
			cd javascript
			node menu.js
			echo -e -n "\033[1;93m Mbomb >> :\033[0m "
			read a
			case $a in
			1) sms ;;
			2) call ;;
			3) setup ;;
			4) exit ;;
			*)menu ;;
			esac
			}
			check() {
				if [ -e ~/MBOMB-V2 ];then
				menu
				else
				cd ~
				git clone https://github.com/rooted-cyber/MBOMB-V2
				fi
				}
				check