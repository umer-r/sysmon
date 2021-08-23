#!/bin/bash
echo ""

OpSt=$(hostnamectl status | grep -e Operat | sed -n -e 's/^.*System: //p')
kerv=$(hostnamectl status | grep -e Ker | sed -n -e 's/^.*Kernel: //p')
ipv4=$(hostname -I | cut -d " " -f 1)
exip=$(curl -s -4 icanhazip.com)
dns_=$(cat /etc/resolv.conf | grep 'name' | head -n 1 | awk {'print $2'})
mcad=$(ip link show | grep link/ether | head -n 1 | awk {'print $2'})
uptm=$(uptime -p)
cpuc=$(lscpu | grep -e 'Architec\|^CPU(s):\|^Model name' | sed -n -e 's/^.*: //p' | tr -d '\n' | awk '{print $2", "$1", " substr($0,index($0,$3))}')
fmem=$(free -h | grep -i mem: | awk {'print $2" / "$4'})
disk=$(df -h / | tail -n 1 | awk {'print $2"/"$3"->"$4"(Free)"'})
load=$(uptime | sed -n -e 's/^.*average: //p')
driv=$(parted --list | egrep "^Disk /dev" | awk '{print $2"-->("$3$4")  "}' | tr -d ':','\n')
uuid=$(cat /etc/machine-id)
frwl=$(systemctl status firewalld 2>/dev/null | grep Active | awk {'print $2"::"$3'} || systemctl status ufw 2>/dev/null | grep Active | awk {'print $2"::"$3'})
if [[ $frwl == "" ]]
then
	frwl="Firewall not Found!"
fi
echo "+-----------------------+"
echo "|Credits @UmerMehmood_  |"
echo "+---------------+-------+"
check_net=$(ping -c 1 google.com | grep 64 | awk {'print $1'})
if [[ $check_net == 64 ]]
then
echo -e "|Internet Status| Connected"
else
echo -e "|Internet Status| Not Connected"
fi
echo "|Hostname       | " | tr -d '\n' && hostname &&
echo "|Operating Systm| $OpSt" &&
echo "|Kernel version | $kerv" &&
echo "|Internal IP    | $ipv4" &&
echo "|External IP    | $exip" &&
echo "|Name Server    | $dns_" &&
echo "|Mac Address    | $mcad" &&
echo "|Host uptime    | $uptm" &&
echo "|Cpu(s),arch,nam| $cpuc" &&
echo "|Free memory    | $fmem" &&
echo "|Present Drives | $driv" &&
echo "|Total Disk Use | $disk" &&
echo "|Average Load   | $load" &&
echo "|Product UUID   | $uuid" &&
echo "|Firewall Status| $frwl" &&
echo "+---------------+-------+"

if [[ $1 == "-x" ]]
then
	user=$(last | grep "still logged in" | awk 'BEGIN {count=1;} {print "|" count++ "\t\t|" $1 "/" $3}')
	tppr=$(ps aux --sort=-%mem | head -n 6 | awk {'print "|"$3"\t"$4"\t|"$2"\t"$11'})
        conc=$(netstat -tulap | grep ESTAB | awk {'print "|Established    |"$7"  ["$4"->"$5"]"'})
        port=$(netstat -tlpn | awk '{print "|"$1"\t\t|" $4}' | tail -n +3 | grep -v '127.0.0.1')
        if [[ $port == '' ]]
        then
        	port="|0\t\t|0"
        fi
	echo -e ""
	echo "+---------------+"
        echo "|Logged in Users|"
	echo "+---------------+-------+"
        echo "$user" &&
        echo "+---------------+-------+"
        echo -e ""
        echo "+---------------+"
        echo "|TOP PROCESSES  |"
	echo "+---------------+------+"
        echo "$tppr" &&
        echo "+---------------+------+"
        echo -e ""
        echo "+---------------+"
        echo "|CONECTIONS     |"
        echo "+---------------+------+"
	echo "$conc" &&
        echo "+---------------+------+"
        echo -e ""
        echo "+---------------+"
        echo "|OPEN PORTS     |"
        echo "+---------------+------+"
	echo -e "$port" &&
        echo "+---------------+------+"
else
        exit 0
fi
