![](https://user-images.githubusercontent.com/83476929/126708973-1db7e73d-b79a-4b78-9743-d0cdbe11ed5a.png)
<br />

![GitHub](https://img.shields.io/github/license/umer-r/sysmon) ![GitHub top language](https://img.shields.io/github/languages/top/umer-r/sysmon) ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/umer-r/sysmon) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/umer-r/sysmon)

## SYSMON
***Linux System information and monitoring version 1.0***

# Description
This neat shell script gives system administrator a proper insight of the server/machine in a clean format.
By using a single command ```sysmon```
you can get information of linux system like:
  - Internet status, External/Internal IPv4
  - Mac address/Name server/Uptime
  - Cpu Information/Average Load/Firewall Status
  - Disk Dirves/Usage/Free space
  - OS/kernel version

And Much more (See sample output)

# Installation
### On Terminal
```bash
git clone https://github.com/carbon-2019/sysmon.git
cd sysmon/
chmod +x sysmon.sh
ln -s $PWD/sysmon.sh /usr/local/bin/sysmon
```

# Usage
### On Terminal
```
sysmon
```
### Output
```
+-----------------------+
|Credits @UmerMehmood_  |
+---------------+-------+
|Internet Status| Connected
|Hostname       | kali
|Operating Systm| Kali GNU/Linux Rolling
|Kernel version | Linux 5.10.0-kali3-amd64
|Internal IP    | 192.168.10.20
|External IP    | xxx.xxx.xxx.xxx
|Name Server    | 192.168.10.1
|Mac Address    | xx:xx:xx:xx:xx:xx
|Host uptime    | up 19 minutes
|Cpu(s),arch,nam| 1, x86_64, Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz
|Free memory    | 11.2Gi / 9.1Gi
|Present Drives | /dev/sda-->(26.3GB)
|Total Disk Use | 23G/14G->8.1G(Free)
|Average Load   | 0.15, 0.11, 0.20
|Product UUID   | xxxxxxxxxxxxxxxx69b0dd2e9b9bdcaf1
|Firewall Status| inactive::(dead)
+---------------+-------+
```


* The switch 'sysmon -x' will give extra bits of information like
  - Logged In users
  - Top Memory eating Processes
  - Established Connections
  - open Ports

### On Terminal
```
sysmon -x
```
### Output
```
+---------------+
|Logged in Users|
+---------------+-------+
|1              |carbon/192.168.10.8
|2              |root/:0
+---------------+-------+

+---------------+
|TOP PROCESSES  |
+---------------+------+
|%CPU   %MEM    |PID    COMMAND
|0.3    2.1     |539    /usr/lib/xorg/Xorg
|0.1    2.0     |885    xfwm4
|0.3    1.8     |1096   /usr/bin/qterminal
|0.1    1.2     |967    /usr/bin/python3
|0.2    1.1     |925    xfdesktop
+---------------+------+

+---------------+
|CONECTIONS     |
+---------------+------+
|Established    |1547/sshd:  [192.168.10.20:ssh->Carbon:49348]
|Established    |445/NetworkManager  [192.168.10.20:bootpc->Broadcom.Home:bootps]
+---------------+------+

+---------------+
|OPEN PORTS     |
+---------------+------+
|tcp            |0.0.0.0:22
|tcp6           |:::22
+---------------+------+
```

## Connect with Me 🤝🏻 &nbsp;

<p align="center">
<a href="https://www.linkedin.com/in/umer-r-437120214/"><img src="https://img.shields.io/badge/-Umer%20R-0077B5?style=flat&logo=Linkedin&logoColor=white"/></a>
<a href="mailto:russs3400@gmail.com"><img src="https://img.shields.io/badge/-Umer R-D14836?style=flat&logo=Gmail&logoColor=white"/></a>
<a href="https://instagram.com/umer_r74"><img src="https://img.shields.io/badge/-@umer__r74-E4405F?style=flat&logo=Instagram&logoColor=white"/></a>
<a href="https://twitter.com/umer_74"><img src="https://img.shields.io/badge/-@umer__74-1877F2?style=flat&logo=Twitter&logoColor=white"/></a>
</p>

### Let's Talk about your project :smiley:

<p align="center">
<a href="https://www.upwork.com/freelancers/~011184505ed9059668"><img src="https://img.shields.io/badge/-Umer%20R-6fda44?style=flat&logo=upwork&logoColor=white"/></a>
<a href="https://www.fiverr.com/hamza_rajaz"><img src="https://img.shields.io/badge/-Umer%20R-00b22d?style=flat&logo=Fiverr&logoColor=white"/></a>

</p>
