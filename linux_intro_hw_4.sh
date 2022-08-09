nedokormysh@nedokormysh-VirtualBox:~$ cd lws
nedokormysh@nedokormysh-VirtualBox:~/lws$ rm *
nedokormysh@nedokormysh-VirtualBox:~/lws$ # 1. Потоки ввода/вывода. Создать файл, используя команду echo.
nedokormysh@nedokormysh-VirtualBox:~/lws$ ls
nedokormysh@nedokormysh-VirtualBox:~/lws$ echo > hw4_task1.txt
nedokormysh@nedokormysh-VirtualBox:~/lws$ ls
hw4_task1.txt
nedokormysh@nedokormysh-VirtualBox:~/lws$ # Используя команду cat, прочитать содержимое всех файлов каталога etc, ошибки перенаправить в отдельный файл.
nedokormysh@nedokormysh-VirtualBox:~/lws$ cat /etc/* 1> hw4_task1.txt 2> hw4_task1_errors.txt
nedokormysh@nedokormysh-VirtualBox:~/lws$ ls
hw4_task1_errors.txt  hw4_task1.txt
nedokormysh@nedokormysh-VirtualBox:~/lws$ head hw4_task1_errors.txt 
cat: /etc/acpi: Это каталог
cat: /etc/alsa: Это каталог
cat: /etc/alternatives: Это каталог
cat: /etc/apm: Это каталог
cat: /etc/apparmor: Это каталог
cat: /etc/apparmor.d: Это каталог
cat: /etc/apport: Это каталог
cat: /etc/apt: Это каталог
cat: /etc/avahi: Это каталог
cat: /etc/bash_completion.d: Это каталог
nedokormysh@nedokormysh-VirtualBox:~/lws$ # 2. Конвейер (pipeline). Использовать команду cut на вывод длинного списка каталога, чтобы отобразить только права доступа к файлам.
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll -ld /etc/* | cut -f1 -d " " 
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r-----
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-s---
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r-----
-rw-r-----
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
lrwxrwxrwx
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
-r--r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
lrwxrwxrwx
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
lrwxrwxrwx
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
lrwxrwxrwx
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
lrwxrwxrwx
lrwxrwxrwx
-rw-r--r--
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r-----
-rw-r-----
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
-rw-r--r--
-rw-r--r--
-rw-r--r--
-r--r-----
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
lrwxrwxrwx
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
drwxr-xr-x
drwxr-xr-x
-rw-r--r--
nedokormysh@nedokormysh-VirtualBox:~/lws$ # Затем отправить в конвейере этот вывод на sort и uniq, чтобы отфильтровать все повторяющиеся строки.
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll -ld /etc/* | cut -f1 -d " " | sort | uniq
drwxr-s---
drwxr-xr-x
lrwxrwxrwx
-r--r-----
-r--r--r--
-rw-r-----
-rw-r--r--
nedokormysh@nedokormysh-VirtualBox:~/lws$ # 3. Управление процессами.) Изменить конфигурационный файл службы SSH: /etc/ssh/sshd_config, отключив аутентификацию по паролю PasswordAuthentication no. 
nedokormysh@nedokormysh-VirtualBox:~/lws$ systemctl status sshd
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: e>
     Active: active (running) since Sun 2022-07-17 13:02:08 MSK; 5min ago
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 1860 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
    Process: 1894 ExecReload=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
    Process: 1895 ExecReload=/bin/kill -HUP $MAINPID (code=exited, status=0/SUC>
   Main PID: 1874 (sshd)
      Tasks: 1 (limit: 4608)
     Memory: 1.4M
     CGroup: /system.slice/ssh.service
             └─1874 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups

июл 17 13:02:08 nedokormysh-VirtualBox systemd[1]: Stopped OpenBSD Secure Shell>
июл 17 13:02:08 nedokormysh-VirtualBox systemd[1]: Starting OpenBSD Secure Shel>
июл 17 13:02:08 nedokormysh-VirtualBox sshd[1874]: Server listening on 0.0.0.0 >
июл 17 13:02:08 nedokormysh-VirtualBox sshd[1874]: Server listening on :: port >
июл 17 13:02:08 nedokormysh-VirtualBox systemd[1]: Started OpenBSD Secure Shell>
июл 17 13:03:27 nedokormysh-VirtualBox systemd[1]: Reloading OpenBSD Secure She>
июл 17 13:03:28 nedokormysh-VirtualBox sshd[1874]: Received SIGHUP; restarting.
июл 17 13:03:28 nedokormysh-VirtualBox systemd[1]: Reloaded OpenBSD Secure Shel>
июл 17 13:03:28 nedokormysh-VirtualBox sshd[1874]: Server listening on 0.0.0.0 >

nedokormysh@nedokormysh-VirtualBox:~/lws$ sudo nano /etc/ssh/sshd_config
[sudo] пароль для nedokormysh:           
nedokormysh@nedokormysh-VirtualBox:~/lws$ # Выполните рестарт службы systemctl restart sshd (service sshd restart),
nedokormysh@nedokormysh-VirtualBox:~/lws$ systemctl restart sshd
nedokormysh@nedokormysh-VirtualBox:~/lws$ systemctl status sshd
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
     Active: active (running) since Sun 2022-07-17 13:08:46 MSK; 5s ago
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 2738 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 2745 (sshd)
      Tasks: 1 (limit: 4608)
     Memory: 1.1M
     CGroup: /system.slice/ssh.service
             └─2745 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups

июл 17 13:08:46 nedokormysh-VirtualBox systemd[1]: Starting OpenBSD Secure Shell server...
июл 17 13:08:46 nedokormysh-VirtualBox sshd[2745]: Server listening on 0.0.0.0 port 22.
июл 17 13:08:46 nedokormysh-VirtualBox sshd[2745]: Server listening on :: port 22.
июл 17 13:08:46 nedokormysh-VirtualBox systemd[1]: Started OpenBSD Secure Shell server.
nedokormysh@nedokormysh-VirtualBox:~/lws$ # верните аутентификацию по паролю, 
nedokormysh@nedokormysh-VirtualBox:~/lws$ sudo nano /etc/ssh/sshd_config
nedokormysh@nedokormysh-VirtualBox:~/lws$ # выполните reload службы systemctl reload sshd (services sshd reload).
nedokormysh@nedokormysh-VirtualBox:~/lws$ systemctl reload sshd
nedokormysh@nedokormysh-VirtualBox:~/lws$ systemctl status sshd
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
     Active: active (running) since Sun 2022-07-17 13:08:46 MSK; 1min 10s ago
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 2738 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
    Process: 2764 ExecReload=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
    Process: 2765 ExecReload=/bin/kill -HUP $MAINPID (code=exited, status=0/SUCCESS)
   Main PID: 2745 (sshd)
      Tasks: 1 (limit: 4608)
     Memory: 1.3M
     CGroup: /system.slice/ssh.service
             └─2745 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups

июл 17 13:08:46 nedokormysh-VirtualBox systemd[1]: Starting OpenBSD Secure Shell server...
июл 17 13:08:46 nedokormysh-VirtualBox sshd[2745]: Server listening on 0.0.0.0 port 22.
июл 17 13:08:46 nedokormysh-VirtualBox sshd[2745]: Server listening on :: port 22.
июл 17 13:08:46 nedokormysh-VirtualBox systemd[1]: Started OpenBSD Secure Shell server.
июл 17 13:09:52 nedokormysh-VirtualBox systemd[1]: Reloading OpenBSD Secure Shell server.
июл 17 13:09:52 nedokormysh-VirtualBox sshd[2745]: Received SIGHUP; restarting.
июл 17 13:09:52 nedokormysh-VirtualBox systemd[1]: Reloaded OpenBSD Secure Shell server.
июл 17 13:09:52 nedokormysh-VirtualBox sshd[2745]: Server listening on 0.0.0.0 port 22.
июл 17 13:09:52 nedokormysh-VirtualBox sshd[2745]: Server listening on :: port 22.
nedokormysh@nedokormysh-VirtualBox:~/lws$ # В чём различие между действиями restart и reload? Создайте файл при помощи команды cat > file_name
nedokormysh@nedokormysh-VirtualBox:~/lws$ cat > hw4_task3.txt
restart перезапускает службу
reload процесс продолжит работать, но перечитает конфигурационный файл
nedokormysh@nedokormysh-VirtualBox:~/lws$ head hw4_task3.txt
restart перезапускает службу
reload процесс продолжит работать, но перечитает конфигурационный файл
nedokormysh@nedokormysh-VirtualBox:~/lws$ # напишите текст и завершите комбинацией ctrl+d. Какой сигнал передадим процессу?
nedokormysh@nedokormysh-VirtualBox:~/lws$ 
nedokormysh@nedokormysh-VirtualBox:~/lws$ # передаём сигнал EOF
nedokormysh@nedokormysh-VirtualBox:~/lws$ 
nedokormysh@nedokormysh-VirtualBox:~/lws$ # 4. Сигналы процессам. Запустите mc.
nedokormysh@nedokormysh-VirtualBox:~/lws$ 
nedokormysh@nedokormysh-VirtualBox:~/lws$ # Запустим 2 терминала. Во втором откроем mc.
nedokormysh@nedokormysh-VirtualBox:~/lws$ # mc
nedokormysh@nedokormysh-VirtualBox:~/lws$ # Вернулись в первый терминал.
nedokormysh@nedokormysh-VirtualBox:~/lws$ ps aux| grep mc
nedokor+    2834  0.0  0.2  22396  9072 pts/1    S+   13:14   0:00 mc
nedokor+    2844  0.0  0.0   8932   716 pts/0    S+   13:14   0:00 grep --color=auto mc
nedokormysh@nedokormysh-VirtualBox:~/lws$ sudo kill -9 2834
nedokormysh@nedokormysh-VirtualBox:~/lws$ ps aux| grep mc
nedokor+    2848  0.0  0.0   8932   652 pts/0    S+   13:15   0:00 grep --color=auto mc
nedokormysh@nedokormysh-VirtualBox:~/lws$ 




