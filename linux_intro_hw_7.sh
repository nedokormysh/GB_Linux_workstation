nedokormysh@nedokormysh-VirtualBox:~$ # 1. Подключить репозиторий с nginx любым удобным способом, установить nginx и потом удалить nginx, используя утилиту dpkg.


nedokormysh@nedokormysh-VirtualBox:~$ ll /etc/apt/sources.list.d/
итого 20
drwxr-xr-x 2 root root 4096 авг 10 21:17 ./
drwxr-xr-x 7 root root 4096 мар 12 22:00 ../
-rw-r--r-- 1 root root  554 янв  4  2022 official-package-repositories.list
-rw-r--r-- 1 root root  187 авг 10 21:17 opera-stable.list
-rw-r--r-- 1 root root  187 июн 24 22:41 vivaldi.list
nedokormysh@nedokormysh-VirtualBox:~$ sudo apt-add-repository ppa:nginx/stable
[sudo] пароль для nedokormysh:           
Вы хотите добавить следующие PPA:
 This PPA contains the latest Stable Release version of the nginx web server software.

**Only Non-End-of-Life Ubuntu Releases are supported in this PPA**

**Development releases of Ubuntu are not officially supported by this PPA, and uploads for those will not be available until actual final releases for those versions**
 Больше информации: https://launchpad.net/~nginx/+archive/ubuntu/stable
Нажмите Enter, чтобы продолжить или Ctrl+C для отмены

Executing: /tmp/apt-key-gpghome.MBwPjp6ARa/gpg.1.sh --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 8B3981E7A6852F782CC4951600A6F0A3C300EE8C
gpg: ключ 00A6F0A3C300EE8C: импортирован открытый ключ "Launchpad Stable"
gpg: Всего обработано: 1
gpg:               импортировано: 1
nedokormysh@nedokormysh-VirtualBox:~$ ll /etc/apt/sources.list.d/
итого 24
drwxr-xr-x 2 root root 4096 авг 11 21:37 ./
drwxr-xr-x 7 root root 4096 авг 11 21:37 ../
-rw-r--r-- 1 root root  126 авг 11 21:37 nginx-stable-focal.list
-rw-r--r-- 1 root root  554 янв  4  2022 official-package-repositories.list
-rw-r--r-- 1 root root  187 авг 10 21:17 opera-stable.list
-rw-r--r-- 1 root root  187 июн 24 22:41 vivaldi.list

nedokormysh@nedokormysh-VirtualBox:~$  sudo apt update
Сущ:1 https://deb.opera.com/opera-stable stable InRelease
Пол:2 http://ppa.launchpad.net/nginx/stable/ubuntu focal InRelease [17,5 kB]   
Сущ:3 http://archive.canonical.com/ubuntu focal InRelease                      
Сущ:4 http://security.ubuntu.com/ubuntu focal-security InRelease               
Сущ:5 http://archive.ubuntu.com/ubuntu focal InRelease                         
Игн:6 http://packages.linuxmint.com una InRelease                              
Игн:7 https://repo.vivaldi.com/stable/deb stable InRelease                     
Сущ:8 https://repo.vivaldi.com/stable/deb stable Release                       
Сущ:9 http://archive.ubuntu.com/ubuntu focal-updates InRelease                 
Сущ:10 http://packages.linuxmint.com una Release                               
Сущ:11 http://archive.ubuntu.com/ubuntu focal-backports InRelease              
Пол:12 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 Packages [4 944 B]
Пол:13 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main i386 Packages [1 224 B]
Пол:14 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main Translation-en [4 572 B]
Получено 28,3 kB за 2с (15,9 kB/s)                             
Чтение списков пакетов… Готово
Построение дерева зависимостей       
Чтение информации о состоянии… Готово
Все пакеты имеют последние версии.

nedokormysh@nedokormysh-VirtualBox:~$ cat /etc/apt/sources.list.d/nginx-ubuntu-stable-focal.list
cat: /etc/apt/sources.list.d/nginx-ubuntu-stable-focal.list: Нет такого файла или каталога

nedokormysh@nedokormysh-VirtualBox:~$ sudo apt install nginx
Чтение списков пакетов… Готово
Построение дерева зависимостей       
Чтение информации о состоянии… Готово
Следующие пакеты устанавливались автоматически и больше не требуются:
  linux-headers-5.4.0-100 linux-headers-5.4.0-100-generic
  linux-headers-5.4.0-121 linux-headers-5.4.0-121-generic
  linux-image-5.4.0-100-generic linux-image-5.4.0-121-generic
  linux-modules-5.4.0-100-generic linux-modules-5.4.0-121-generic
  linux-modules-extra-5.4.0-100-generic linux-modules-extra-5.4.0-121-generic
Для их удаления используйте «sudo apt autoremove».
Будут установлены следующие дополнительные пакеты:
  libgeoip1 libnginx-mod-http-image-filter libnginx-mod-http-xslt-filter
  libnginx-mod-mail libnginx-mod-stream libnginx-mod-stream-geoip nginx-common
  nginx-core
Предлагаемые пакеты:
  geoip-bin fcgiwrap nginx-doc
Следующие НОВЫЕ пакеты будут установлены:
  libgeoip1 libnginx-mod-http-image-filter libnginx-mod-http-xslt-filter
  libnginx-mod-mail libnginx-mod-stream libnginx-mod-stream-geoip nginx
  nginx-common nginx-core
Обновлено 0 пакетов, установлено 9 новых пакетов, для удаления отмечено 0 пакетов, и 0 пакетов не обновлено.
Необходимо скачать 931 kB архивов.
После данной операции объём занятого дискового пространства возрастёт на 2 517 kB.
Хотите продолжить? [Д/н] y
Пол:1 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 nginx-common all 1.18.0-3ubuntu1+focal2 [68,6 kB]
Пол:2 http://archive.ubuntu.com/ubuntu focal/universe amd64 libgeoip1 amd64 1.6.12-6build1 [70,5 kB]
Пол:3 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 libnginx-mod-http-xslt-filter amd64 1.18.0-3ubuntu1+focal2 [43,0 kB]
Пол:4 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 libnginx-mod-mail amd64 1.18.0-3ubuntu1+focal2 [72,9 kB]
Пол:5 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 libnginx-mod-stream amd64 1.18.0-3ubuntu1+focal2 [97,5 kB]
Пол:6 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 libnginx-mod-stream-geoip amd64 1.18.0-3ubuntu1+focal2 [40,4 kB]
Пол:7 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 nginx-core amd64 1.18.0-3ubuntu1+focal2 [457 kB]
Пол:8 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 libnginx-mod-http-image-filter amd64 1.18.0-3ubuntu1+focal2 [44,8 kB]
Пол:9 http://ppa.launchpad.net/nginx/stable/ubuntu focal/main amd64 nginx all 1.18.0-3ubuntu1+focal2 [35,6 kB]
Получено 931 kB за 1с (714 kB/s)
Предварительная настройка пакетов …
Выбор ранее не выбранного пакета libgeoip1:amd64.
(Чтение базы данных … на данный момент установлено 430898 файлов и каталогов.)
Подготовка к распаковке …/0-libgeoip1_1.6.12-6build1_amd64.deb …
Распаковывается libgeoip1:amd64 (1.6.12-6build1) …
Выбор ранее не выбранного пакета nginx-common.
Подготовка к распаковке …/1-nginx-common_1.18.0-3ubuntu1+focal2_all.deb …
Распаковывается nginx-common (1.18.0-3ubuntu1+focal2) …
Выбор ранее не выбранного пакета libnginx-mod-http-xslt-filter.
Подготовка к распаковке …/2-libnginx-mod-http-xslt-filter_1.18.0-3ubuntu1+focal2
_amd64.deb …
Распаковывается libnginx-mod-http-xslt-filter (1.18.0-3ubuntu1+focal2) …
Выбор ранее не выбранного пакета libnginx-mod-mail.
Подготовка к распаковке …/3-libnginx-mod-mail_1.18.0-3ubuntu1+focal2_amd64.deb …
Распаковывается libnginx-mod-mail (1.18.0-3ubuntu1+focal2) …
Выбор ранее не выбранного пакета libnginx-mod-stream.
Подготовка к распаковке …/4-libnginx-mod-stream_1.18.0-3ubuntu1+focal2_amd64.deb
 …
Распаковывается libnginx-mod-stream (1.18.0-3ubuntu1+focal2) …
Выбор ранее не выбранного пакета libnginx-mod-stream-geoip.
Подготовка к распаковке …/5-libnginx-mod-stream-geoip_1.18.0-3ubuntu1+focal2_amd
64.deb …
Распаковывается libnginx-mod-stream-geoip (1.18.0-3ubuntu1+focal2) …
Выбор ранее не выбранного пакета nginx-core.
Подготовка к распаковке …/6-nginx-core_1.18.0-3ubuntu1+focal2_amd64.deb …
Распаковывается nginx-core (1.18.0-3ubuntu1+focal2) …
Выбор ранее не выбранного пакета libnginx-mod-http-image-filter.
Подготовка к распаковке …/7-libnginx-mod-http-image-filter_1.18.0-3ubuntu1+focal
2_amd64.deb …
Распаковывается libnginx-mod-http-image-filter (1.18.0-3ubuntu1+focal2) …
Выбор ранее не выбранного пакета nginx.
Подготовка к распаковке …/8-nginx_1.18.0-3ubuntu1+focal2_all.deb …
Распаковывается nginx (1.18.0-3ubuntu1+focal2) …
Настраивается пакет nginx-common (1.18.0-3ubuntu1+focal2) …
Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /lib
/systemd/system/nginx.service.
Настраивается пакет libgeoip1:amd64 (1.6.12-6build1) …
Настраивается пакет libnginx-mod-stream (1.18.0-3ubuntu1+focal2) …
Настраивается пакет nginx-core (1.18.0-3ubuntu1+focal2) …
 * Upgrading binary nginx                                                [ OK ] 
Настраивается пакет libnginx-mod-mail (1.18.0-3ubuntu1+focal2) …
Настраивается пакет nginx (1.18.0-3ubuntu1+focal2) …
Настраивается пакет libnginx-mod-http-image-filter (1.18.0-3ubuntu1+focal2) …
Настраивается пакет libnginx-mod-stream-geoip (1.18.0-3ubuntu1+focal2) …
Настраивается пакет libnginx-mod-http-xslt-filter (1.18.0-3ubuntu1+focal2) …
Обрабатываются триггеры для libc-bin (2.31-0ubuntu9.9) …
Обрабатываются триггеры для ufw (0.36-6ubuntu1) …
Обрабатываются триггеры для systemd (245.4-4ubuntu3.17) …
Обрабатываются триггеры для man-db (2.9.1-1) …
Обрабатываются триггеры для nginx-core (1.18.0-3ubuntu1+focal2) …
Triggering nginx reload ...
nedokormysh@nedokormysh-VirtualBox:~$ 

nedokormysh@nedokormysh-VirtualBox:~$ sudo systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset:>
     Active: active (running) since Thu 2022-08-11 21:44:13 MSK; 1min 34s ago
       Docs: man:nginx(8)
    Process: 4405 ExecReload=/usr/sbin/nginx -g daemon on; master_process on; ->
   Main PID: 4152 (nginx)
      Tasks: 2 (limit: 4608)
     Memory: 3.4M
     CGroup: /system.slice/nginx.service
             ├─4152 nginx: master process /usr/sbin/nginx -g daemon on; master_>
             └─4419 nginx: worker process

авг 11 21:44:13 nedokormysh-VirtualBox systemd[1]: Starting A high performance >
авг 11 21:44:13 nedokormysh-VirtualBox systemd[1]: Started A high performance w>
авг 11 21:44:19 nedokormysh-VirtualBox systemd[1]: Reloading A high performance>
авг 11 21:44:19 nedokormysh-VirtualBox systemd[1]: Reloaded A high performance >
lines 1-16/16 (END)

nedokormysh@nedokormysh-VirtualBox:~$ ll /etc/nginx/
итого 80
drwxr-xr-x   8 root root  4096 авг 11 21:44 ./
drwxr-xr-x 147 root root 12288 авг 11 21:44 ../
drwxr-xr-x   2 root root  4096 июл  6  2020 conf.d/
-rw-r--r--   1 root root  1125 июл  6  2020 fastcgi.conf
-rw-r--r--   1 root root  1055 июл  6  2020 fastcgi_params
-rw-r--r--   1 root root  2837 июл  6  2020 koi-utf
-rw-r--r--   1 root root  2223 июл  6  2020 koi-win
-rw-r--r--   1 root root  3957 июл  6  2020 mime.types
drwxr-xr-x   2 root root  4096 июл  6  2020 modules-available/
drwxr-xr-x   2 root root  4096 авг 11 21:44 modules-enabled/
-rw-r--r--   1 root root  1447 июл  6  2020 nginx.conf
-rw-r--r--   1 root root   180 июл  6  2020 proxy_params
-rw-r--r--   1 root root   636 июл  6  2020 scgi_params
drwxr-xr-x   2 root root  4096 авг 11 21:44 sites-available/
drwxr-xr-x   2 root root  4096 авг 11 21:44 sites-enabled/
drwxr-xr-x   2 root root  4096 авг 11 21:44 snippets/
-rw-r--r--   1 root root   664 июл  6  2020 uwsgi_params
-rw-r--r--   1 root root  3071 июл  6  2020 win-utf

nedokormysh@nedokormysh-VirtualBox:~$ sudo dpkg -P nginx
(Чтение базы данных … на данный момент установлено 430989 файлов и каталогов.)
Удаляется nginx (1.18.0-3ubuntu1+focal2) …


nedokormysh@nedokormysh-VirtualBox:~$ # 2. Установить пакет на свой выбор, используя snap.

nedokormysh@nedokormysh-VirtualBox:~$ snap search firefox
Название             Версия         Издатель      Примечание  Описание
firefox              103.0.2-1      mozilla✓      -           Mozilla Firefox web browser
firefox-kiosk        0.1            scout208      -           firefox example kiosk
red-app              8.0            keshavnrj     -           Complete Youtube Desktop Applications
orange-app           6.0            keshavnrj     -           Complete SoundCloud Desktop Applications
dashkiosk            v2.7.3         ogra          -           Drive a set of screens displaying dashboards
joplin-arnatious     1.0.224        arnatious     -           Joplin is a free, open source note taking and to-do application.
downloadaccelerator  3.0            messey-bilal  -           A free tool to download files.
tncc-script          0+git.4192108  guilhem       -           wrapper for openconnect and pulse
nedokormysh@nedokormysh-VirtualBox:~$ snap install firefox
2022-08-11T22:34:26+03:00 INFO Waiting for automatic snapd restart...
firefox 103.0.2-1 от Mozilla✓ установлен
nedokormysh@nedokormysh-VirtualBox:~$

nedokormysh@nedokormysh-VirtualBox:~$ # 3. Настроить iptables: разрешить подключения только на 22-й и 80-й порты.


nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -S
[sudo] пароль для nedokormysh:           
-P INPUT ACCEPT
-P FORWARD ACCEPT
-P OUTPUT ACCEPT


nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -P INPUT DROP
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -P OUTPUT DROP
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -A INPUT -p tcp --dport 20 -j ACCEPT
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -A OUTPUT -p tcp --dport 20 -j ACCEPT
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -S
-P INPUT DROP
-P FORWARD ACCEPT
-P OUTPUT DROP
-A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 20 -j ACCEPT
-A OUTPUT -p tcp -m tcp --dport 20 -j ACCEPT
-A OUTPUT -p tcp -m tcp --dport 80 -j ACCEPT



nedokormysh@nedokormysh-VirtualBox:~$ # 4. * Настроить проброс портов локально с порта 80 на порт 8080.

edokormysh@nedokormysh-VirtualBox:~$ sudo iptables -S
-P INPUT DROP
-P FORWARD ACCEPT
-P OUTPUT DROP
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -S
-P INPUT DROP
-P FORWARD ACCEPT
-P OUTPUT DROP
nedokormysh@nedokormysh-VirtualBox:~$ sudo iptables -S -t nat
-P PREROUTING ACCEPT
-P INPUT ACCEPT
-P OUTPUT ACCEPT
-P POSTROUTING ACCEPT
-A PREROUTING -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 8080


