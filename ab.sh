trap 'printf "\n";stop' 2


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

starting () {
printf "\n\n\033[1;92m[\033[0m+\033[1;92m]\033[1;96m Starting ngrok server.....\n\n"
cd ~/Missile
sleep 2
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m [\e[0m<\e[1;92m] Your Ngrok link:\e[0m\e[1;77m %s\e[0m\n\n" $link
}
starting
