Hardware command for linux

```
$ lscpu
```
The lscpu command reports information about the cpu and processing units. It does not have any further options or functionality

---

```
$ lshw
$ lshw -short
$ sudo lshw -short
```
A general purpose utility, that reports detailed and brief information about multiple different hardware units such as cpu, memory, disk, usb controllers, network adapters etc. Lshw extracts the information from different /proc files.

---

```
$ sudo apt install hwinfo
$ hwinfo
$ hwinfo --short
```
Hwinfo is another general purpose hardware probing utility that can report detailed and brief information about multiple different hardware components, and more than what lshw can report.

---

```
$ lspci
```
The lspci command lists out all the pci buses and details about the devices connected to them.
The vga adapter, graphics card, network adapter, usb ports, sata controllers, etc all fall under this category.

```
$ lspci -v | grep "VGA" -A 12
```
Filter out specific device information with grep.

---

```
$ sudo apt install lsscsi
$ lsscsi
```
Lists out the scsi/sata devices like hard drives and optical drives.

---

```
$ lsusb
```
This command shows the USB controllers and details about devices connected to them. By default brief information is printed. Use the verbose option "-v" to print detailed information about each usb port

---

```
$ lsblk
```
List out information all block devices, which are the hard drive partitions and other storage devices like optical drives and flash drives

---

```
$ df
$ df -H
```
Reports various partitions, their mount points and the used and available space on each.

---

```
$ fdisk -l
```
Fdisk is a utility to modify partitions on hard drives, and can be used to list out the partition information as well.

---

```
$ mount | column -t
```
The mount is used to mount/unmount and view mounted file systems.

Again, use grep to filter out only those file systems that you want to see
```
$ mount | column -t | grep ext
```

---

```
$ free -m
```
Check the amount of used, free and total amount of RAM on system with the free command.

---
The dmidecode command is different from all other commands. It extracts hardware information by reading data from the SMBOIS data structures (also called DMI tables).

```
# display information about the processor/cpu
$ sudo dmidecode -t processor

# memory/ram information
$ sudo dmidecode -t memory

# bios details
$ sudo dmidecode -t bios
```
Check out the man page for more details.

---
Many of the virtual files in the /proc directory contain information about hardware and configurations. Here are some of them

CPU/Memory information

```
# cpu information
$ cat /proc/cpuinfo

# memory information
$ cat /proc/meminfo
```

Linux/kernel information

```
$ cat /proc/version
```

SCSI/Sata devices

```
$ cat /proc/scsi/scsi
```

Partitions

```
$ cat /proc/partitions
```

---

The hdparm command gets information about sata devices like hard disks.

```
$ sudo hdparm -i /dev/sda
```
