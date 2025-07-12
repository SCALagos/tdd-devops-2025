# Linux basics and commands 

### What is linux

 - Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released on September 17, 1991, by Linus Torvalds.
  Linux is an operating system similar to windows or apple os but linux is free and open source .There are hundreds of distributions of linux available .


### How linux is used in the real world 
- Servers: Linux is the most popular operating system for servers. It is used by many of the world's largest companies, including Google, Amazon, and Microsoft.
- Desktops: Linux is also becoming increasingly popular as a desktop operating system. There are a number of user-friendly Linux distributions available, such as Ubuntu and Mint.
- Laptops: Linux is also a popular choice for laptops. It is known for its long battery life and its ability to run on a wide variety of hardware.
- Smartphones: Linux is the basis for the Android operating system, which is the most popular mobile operating system in the world.
- Embedded systems: Linux is also used in a wide variety of embedded systems, such as routers, smart TVs, and cars.

### Linux distributions 
- Ubuntu
- Debian
- Mint
- Fedora
- Manjaro
- Arch Linux
- OpenSUSE
- PCLinuxOS
- Zorin OS
- Elementary OS
- Solus
- Deepin
- Centos Os
- BunsenLabs
- Peppermint OS
- MX Linux
- redhat
- Neptune OS
- Kali Linux
- Lubuntu
- Knoppix
- Bodhi Linux …etc
  
These distributions offer a variety of features and target different audiences. Some distributions, such as Ubuntu and Mint, are designed to be user-friendly and easy to install. Other distributions, such as Arch Linux and Manjaro, are more geared towards power users who want to have more control over their system.
When choosing a Linux distribution, it is important to consider your needs and preferences. If you are new to Linux, it is recommended to start with a user-friendly distribution such as Ubuntu . Once you have become more familiar with Linux, you can try other distributions that offer more features or customization options.

### Basic Navigation

Why Use the Terminal?
The terminal is powerful, fast, and gives you full control over your system. GUI is like automatic — terminal is manual — but gives you more precision.

### 🖥️ Terminal Basics
Command	What It Does
- `pwd`:  Print current directory (where you are)
- `ls`:List files in current directory
- `cd <dir> `:Change directory
- `mkdir <dir>`:Make a new directory
- `touch <file>	`: Create a new file
- `cp <src> <dest>`:Copy files
- `mv <src> <dest>`:Move/rename files
- `rm <file>`:Delete files
  
 Add -r  for directories

### Getting Help

Command	Use
- `man <command>`:Open manual page
- `<command> --help`:Get usage summary

Example:
```
man ls
ls --help
```

### 📂 File System Structure 
Folder	Purpose
- /	       Root of the system
- /home	   User folders
- /etc	   Configuration files
- /bin  	 Essential system binaries (e.g. ls, cp)
- /var	   Logs, variable files (e.g. /var/log)

### 🔐 Permissions & Ownership
Check file permissions:
- ```ls -l```
Example:

```-rw-r--r-- 1 user user 123 Jul 3 10:00 file.txt```

Breakdown:

rwx: Read, write, execute

3 sets: Owner / Group / Others
sample:  -rwxrwxrwx

![alt text](image.png)

File permission numbers
| Permission  | Binary | Decimal |
| ----------- | ------ | ------- |
| `r` (read)  | `100`  | **4**   |
| `w` (write) | `010`  | **2**   |
| `x` (exec)  | `001`  | **1**   |

You add these together for each set of permissions

| Permissions | Binary | Decimal       |
| ----------- | ------ | ------------- |
| `rwx`       | `111`  | 4+2+1 = **7** |
| `rw-`       | `110`  | 4+2+0 = **6** |
| `r--`       | `100`  | 4+0+0 = **4** |
| `r-x`       | `101`  | 4+0+1 = **5** |
| `--x`       | `001`  | 0+0+1 = **1** |

ie - rwx rwx rwx
   7   7   7  → 777

Change permissions:
```
 chmod 755 file.sh
```
Change owner:
```
chown <username>:<groupname> file.txt

```
Run with admin rights:

sudo command

### 📦 Package Management
Depending on the distro:
Distro: Install	Remove	Update
- Ubuntu/Debian
  ```
  sudo apt install <pkg>
  sudo apt remove <pkg>
  sudo apt update && sudo apt upgrade ```
- Fedora
  ```
  sudo dnf install <pkg>
  sudo dnf remove <pkg>
  sudo dnf update 
  ```
- Arch
  ```
  sudo pacman -S <pkg>
  sudo pacman -R <pkg>
  sudo pacman -Syu

  ```

Example:
```sudo apt install neofetch```

### Simple Scripting

Basic Bash script:
```sh
#!/bin/bash
echo "Hello, Linux!"
```
Save as hello.sh, then:

- ```chmod +x hello.sh```
- ```./hello.sh```

You can automate tasks like backups or updates with scripts.

🌐 Networking Basics
Command	Use
- ```ping <host>	             Check network connection```
- ```ip a	                     Show IP addresses```
- ```curl <url>             	 Fetch content from web```
- ```scp file user@host:/path	 Secure copy over SSH```
- ``` ssh user@host	           Connect to another machine```

Example:
ping google.com
ssh student@192.168.1.100

### Navigation & Files
- `tree`: Visual folder structure (install with   sudo apt install tree)
- `stat <file>`: Detailed file info (timestamps, size, etc.)
- `file <file>`:Tells you the file type
- `locate <name>`:	Quickly find files by name (use sudo updatedb first)
- `find . -name "*.txt"	`:Find files recursively by pattern
- `du -sh *`: Show disk usage of files/folders
- `df -h`: Show free space on mounted drives

###  User Management Commands
- `useradd`:Creates a new user account.
- `userdel` : Deletes a user account from the system.
- `passwd` :Sets or changes a user's password.
- `groupmod` : Modifies an existing group’s properties.
- `groups` :Displays all groups a user belongs to.
- `id`:Shows a user's UID, GID, and group information.


### ⚙️ System Info & Monitoring
- `uname -a`: Kernel info
- `top or htop`: Live process monitor (htop is prettier)
- `free -h`: RAM usage
- `uptime`: System load and running time
- `whoami`:	Current user
- `hostname`:	System name
- `history`	:Show command history
- `watch <cmd>`: Run a command repeatedly (e.g. watch df -h)

### Additional Resources: 
For Further Linux Practice check out these free resources.
 

- [Udacity : Configuring linux web servers ](https://www.udacity.com/course/configuring-linux-web-servers--ud299)

- [Kodekloud: linux Free Labs](https://kodekloud.com/free-labs/linux)

- [The Linux Journey](https://linuxjourney.com/)


  
