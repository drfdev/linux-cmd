**Мониторинг процессов**

Все процессы

```
$ ps          # список процессов
$ ps -A       # форматирование
$ ps -e       
$ ps au       # в формате BSD
$ ps aux
$ ps -ef      # полный формат
$ ps -eF
```

Процессы пользователя
(-U и -u реальное и эффективное имя пользователя)

```
$ ps -x                     # процессы текущего пользователя
$ ps -fU user               # процессы пользователя user
$ ps -fu user
$ ps -fU 1000               # процессы пользователя с EUID=1000
$ ps -fu 1000
$ ps -U root -u root        # пользователь root
```

Группы процессов
(-G и -g реальное и эффективное имя группы)

```
$ ps -fG apache             # процессы из группы apache
$ ps -fg apache
$ ps -fG 48                 # процессы из группы 48
$ ps -fg 48
```

Процессы по PID

```
$ ps -fp 1178               # процесс с PID=1178
$ ps -f --ppid 1154
$ ps -fp 2226,1154,1146     # выбрать список процессов по PID
```

Процессы отображения TTY

```
$ ps -t pst/0
$ ps -t pst/1
$ ps -ft tty1
```

Дерево процессов

```
$ ps -e -forest
$ ps -f --forest -C sshd        # дерево процессов для конкретного процесса
$ ps -ef --forest | grep -v grep | grep sshd
```

Потоки процесса

```
$ ps -fL -C httpd
```

Формат вывода:
(-o или -format позволяют менять формат вывода)

```
$ ps L                                              # все доступные форматы
$ ps -eo pid,ppid,user,cmd                          # вывод колонок PID, PPID, имя пользователя и команду процесса
$ ps -p 1154 -o pid,ppid,fgroup,ni,lstart,etime     # для процесса по pid
                                                    # показывает группу файловой системы,
                                                    # приоритет nice, время начала
                                                    # и текущее время выполнения процесса
$ ps -p 1154 -o comm=                               # имя процесса по PID
```

Родительские и дочерние процессы

```
$ ps -C sshd                              # все дочерние процессы конкретного процесса
$ ps -C httpd -o pid=                     # PID всех дочерних процессов
$ ps -eo comm,etime,user | grep httpd     # время выполнения процесса
```

Диагностика

```
# процессы, использующие максимальное количество памяти/ЦП в Linux.
$ ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
$ ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head

# убить процесс
$ ps -A | grep -i atom
7807 ?        00:00:00 atom
7809 ?        00:00:58 atom
7811 ?        00:00:00 atom
7838 ?        00:00:27 atom
7856 ?        00:06:31 atom
7933 ?        00:00:00 atom
$ kill -9 7807 7809 7811 7838 7856 7933

# контекст безопасности
$ ps --context
$ ps -eM
$ ps -eo euser,ruser,suser,fuser,f,comm,label
```

**Утилита watch**

Мониторинг процессов в реальном времени

```
# отображает данные мониторинга ps, с шагом раз в секунду
$ watch -n 1 'ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'
```

**Найти процесс по ...**

По pid:
```bash
$ ps -p 1337 -o comm=
$ ps -p 1337 -o command
$ cat /proc/1337/cmdline
$ ps ax|egrep "^ 1337"
```

По имени:
```bash
$ pidof atom
$ pgrep atom
$ ps aux | grep -i atom
```

По команде запуска:
```bash
ps aux | grep 'Xorg'
ps aux | grep 'atom'
```
