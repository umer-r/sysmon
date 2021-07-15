# SYSMON
***Linux System information and monitoring version 1.0***

# Description
This neat shell script gives system administrator a proper insight of the server/machine in a clean format.

# Installation
### On Terminal
```
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
