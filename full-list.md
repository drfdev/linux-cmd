$ date
```
Ср авг 14 22:52:24 MSK 2019
```
$ date -Ihours
```
2019-08-14T22+03:00
```
$ date -Iminutes
```
2019-08-14T22:58+03:00
```
$ date -d yesterday
```
Вт авг 13 22:58:59 MSK 2019
```
---
$ clear
```
$
```
---
$ df
```
Файл.система    1K-блоков Использовано   Доступно Использовано% Cмонтировано в
udev              8111144            0    8111144            0% /dev
tmpfs             1626648         2088    1624560            1% /run
/dev/nvme0n1p3  214852896     18316280  185552988            9% /
tmpfs             8133236       299140    7834096            4% /dev/shm
tmpfs                5120            4       5116            1% /run/lock
tmpfs             8133236            0    8133236            0% /sys/fs/cgroup
[...]
```
$ df -h

```
Файл.система   Размер Использовано  Дост Использовано% Cмонтировано в
udev             7,8G            0  7,8G            0% /dev
tmpfs            1,6G         2,1M  1,6G            1% /run
/dev/nvme0n1p3   205G          19G  177G           10% /
tmpfs            7,8G         277M  7,5G            4% /dev/shm
tmpfs            5,0M         4,0K  5,0M            1% /run/lock
tmpfs            7,8G            0  7,8G            0% /sys/fs/cgroup
```

---
$ free

```
всего        занято        свободно      общая  буф./врем.   доступно
Память:    16266488     5031992      263136      472284    10971360    10468968
Подкачка:    24414204           0    24414204
```

---

$ ps

```
PID TTY          TIME CMD
13257 pts/0    00:00:00 bash
15822 pts/0    00:00:00 ps
```

---

$ uptime

```
20:45:20 up 11:14,  1 user,  load average: 1,08, 1,12, 0,75
```

---

$ w

```
20:46:31 up 11:16,  1 user,  load average: 0,81, 1,03, 0,74
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
drafff   :0       :0               09:31   ?xdm?  38:32   0.00s /usr/lib/gdm3/gdm-x-session --run-script env GNOME_SHELL_SESSION_MODE=ubuntu gnome-session --session=ubuntu
```

---

$ rm \<file\>

$ rm -r \<folder\>

---

$ mv \<folder1/file1\> \<folder2/file1\>

$ mv \<old_name\> \<new_name\>

---

$ cp \<file1\> \<file2\>

$ cp -r \<folder1\> \<folder2\>

---

$ ls

```
b.txt
```

$ ls -la

```
итого 12
drwxr-xr-x 2 drafff drafff 4096 авг 14 23:06 .
drwxr-xr-x 4 drafff drafff 4096 авг 18 20:51 ..
-rw-r--r-- 1 drafff drafff   10 авг 14 23:06 b.txt
```

---

$ tree

```
.
└── b.txt

0 directories, 1 file
```

$ cd ..

$ tree

```
.
├── a.txt
├── full-list.md
├── README.md
├── short-list.md
└── test
    └── b.txt

1 directory, 5 files
```

$ tree . -a

```
.
├── a.txt
├── full-list.md
├── .git
│   ├── branches
│   ├── COMMIT_EDITMSG
│   ├── config
│   ├── description
│   ├── HEAD
│   ├── hooks
│   │   ├── applypatch-msg.sample
│   │   ├── commit-msg.sample
│   │   ├── fsmonitor-watchman.sample
│   │   ├── post-update.sample
│   │   ├── pre-applypatch.sample
│   │   ├── pre-commit.sample
│   │   ├── prepare-commit-msg.sample
│   │   ├── pre-push.sample
│   │   ├── pre-rebase.sample
│   │   ├── pre-receive.sample
│   │   └── update.sample
│   ├── index
│   ├── info
│   │   └── exclude
│   ├── logs
│   │   ├── HEAD
│   │   └── refs
│   │       ├── heads
│   │       │   └── master
│   │       └── remotes
│   │           └── origin
│   │               ├── HEAD
│   │               └── master
│   ├── objects
│   │   ├── 22
│   │   │   └── 8c569b9e29451bd5d665a3398ac95889196d99
│   │   ├── 2a
│   │   │   └── 4da86aa2844d544c199ab3de735512686278e5
│   │   ├── 4d
│   │   │   └── 9cb445a6ef0370fcc5fa813ee185e7d558fe17
│   │   ├── 5f
│   │   │   └── e762e21a2abb8e040c8870b7a7fa0d08b6d668
│   │   ├── 60
│   │   │   └── 162cbe11f0ac98aa2c6ed9d55bfc5cefb183c4
│   │   ├── 7a
│   │   │   └── 685fff79e95139ad57f1959e72150abaaca476
│   │   ├── c0
│   │   │   └── 804f364f8baba5391bc38cab9d19b451ce7488
│   │   ├── c4
│   │   │   └── 2654ff604d936ddb9f5b25f3e5cfd578ec0548
│   │   ├── dc
│   │   │   └── 2224c00279ce39a6355ec43012d58c782706f2
│   │   ├── f0
│   │   │   └── e63293ef6149555c5bebf0b88f853fc3fad394
│   │   ├── ff
│   │   │   └── 27696a94f2f6ee47910cb426b8c0a2d3b6932e
│   │   ├── info
│   │   └── pack
│   ├── packed-refs
│   └── refs
│       ├── heads
│       │   └── master
│       ├── remotes
│       │   └── origin
│       │       ├── HEAD
│       │       └── master
│       └── tags
├── README.md
├── short-list.md
└── test
    └── b.txt

29 directories, 41 files

```

---

$ cat a.txt

```
first row
second row
```

$ cat test/b.txt

```
empty row
```

---

$ tac b.txt

```
second row
first row
```

---

$ head -1 a.txt

```
first row
```
---

$ tail -1 a.txt

```
second row
```

---

$ echo user

```
user
```

---

$ grep "row" a.txt

first <span style="color:red">row</span>

second <span style="color:red">row</span>

---

$ zip a.zip a.txt

```
adding: a.txt (deflated 10%)
```

$ ls -la

```
[...]
-rw-r--r-- 1 drafff drafff  179 авг 18 21:51 a.zip
[...]
```

---

$ rm a.txt

$ unzip a.zip

```
Archive:  a.zip
  inflating: a.txt  
```

$ ls -la

```
[...]
-rw-r--r-- 1 drafff drafff   21 авг 14 23:05 a.txt
-rw-r--r-- 1 drafff drafff  179 авг 18 21:51 a.zip
[...]
```

---

$ pwd

```
/home/drafff/java/github/linux-cmd
```
