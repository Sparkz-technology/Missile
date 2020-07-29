trap 'printf "\n";stop' 2
fol() {
	cd ~/Missile
	}
	R () {
		if [ -e $PREFIX/bin/python ];then
		fol
		python .random.py
		else
		pkg install python
		fol
		python .random.py
		fi
		}


stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}
logo () {
	R
	toilet -f  mono12 MISSILE  | lolcat

echo -e "\e[1;34m Created By @sparkz_technology \e[1;31m              v6.sparkz"

	echo
	}
	
		ngrok_run () {
			cd ~/Missile
			if [ -e ngrok ];then
			chmod 700 ngrok
			killall -2 ngrok > /dev/null 2>&1
			./ngrok http 8080 > /dev/null 2>&1 &
			else
			printf "\n\033[91m [?] ngrok not found\n\n"
			printf "\033[92m [+] Downloading ngrok......\n\n"
			wget --no-check-certificate https://github.com/Sparkz-technology/ngrok-arm/raw/master/ngrok > /dev/null 2>&1
			unzip ngrok.zip > /dev/null 2>&1
			chmod 700 ngrok
			rm -f ngrok.zip
			killall -2 ngrok > /dev/null 2>&1
			./ngrok http 8080 > /dev/null 2>&1 &
			fi
			}
		ngrok-server () {
clear
			cd ~/Missile
			ngrok_run
			cd ~/Missile
			python3 ngrok.py --tunnel manual --subdomain zomato
			}
			ng-se() {
				ngrok_run
				cd ~/Missile
				sleep 0.5
				}
				subdomain() {
					cd ~/Missile
					sleep 0.5
					}
			link () {
				link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
				printf "\e[1;92m[\e[0m*\e[1;92m] Your link:\e[0m\e[1;77m %s\e[0m\n" $link
				printf "\n"
				}
				sett () {
cd $PREFIX/bin
if [ -e location ];then
	menu
	else
	printf "\n\n \033[92m [*] Requirements installing....\n\n"
	sleep 1
	apt update
	apt upgrade
	apt install toilet
	apt install python
	apt install wget
	pip install lolcat
	apt install php
	apt install openssh
	fol
	bash random.sh
	setup
	bash install.sh
	clear
	printf "\n\n \033[96m [+] Creating shortcut...."
	sleep 2
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/location
	echo "cd ~/Missile" >> /$PREFIX/bin/location
	echo "bash Missile.sh" >> $PREFIX/bin/location
	chmod 777 $PREFIX/bin/location
	printf "\n\n Now you can use this command :-\033[0m location\n"
	printf "\n\n Press enter to start\n\n"
	read
	menu
	fi
	}
	fool () {
		clear
		printf "\n\n\033[91m You are totally mad.\n\nFirst learn basic and install Missile \n\n"
		printf "\033[92m Follow my instruction to install Missile:-\n\n"
		printf " First open Termux
Then type this command :-
		
$ apt update
$ apt upgrade
$ apt install git
$ cd $?�HOME
$ git clone https://github.com/sparkz-technology/Missile.git
$ cd Missile
$ bash Missile.sh
		 
And wait for setuping and starting command :-
		 location"
		 }
	
	
	clear
	echo
	check () {
		cd $PREFIX/bin
		if [ -e lolcat ];then
		echo
		else
		apt install python
		pip install lolcat
		fi
		}
		check2 () {
			cd ~/Missile
			if [ -e ngrok.py ];then
			echo
			else
                         sleep 2
			fi
			}
			menu () {
			check
			check2
		clear
		logo
		printf "\n\033[1;92m[\033[0m1\033[1;92m]\033[1;34m Ngrok"
		printf "\n\033[1;92m[\033[0m0\033[1;92m]\033[1;34m Exit\n\n\n"
		
	echo -e -n "\033[31mMissile\033[94m@\033[91m(\033[96mtool\033[91m)\033[95m --> "
	read s
	case $s in
	1)ngrok-server ;;
	0)exit ;;
	*)sparkz ;;
	esac
	
	
	
	
	}
	cd ~
	if [ -e Missile ];then
	sett
	else
	fool
	fi
	
