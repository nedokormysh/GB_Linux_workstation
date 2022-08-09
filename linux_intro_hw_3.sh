nedokormysh@nedokormysh-VirtualBox:~$ # Task1 # 1. Управление пользователями:
nedokormysh@nedokormysh-VirtualBox:~$ # a) создать нового пользователя;
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ whoami
nedokormysh
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash user_task1
[sudo] пароль для nedokormysh:           
nedokormysh@nedokormysh-VirtualBox:~$ sudo passwd user_task1
Новый пароль : 
Повторите ввод нового пароля : 
passwd: пароль успешно обновлён
nedokormysh@nedokormysh-VirtualBox:~$ su user_task1
Пароль: 
user_task1@nedokormysh-VirtualBox:/home/nedokormysh$ whoami
user_task1
user_task1@nedokormysh-VirtualBox:/home/nedokormysh$ # b) убедиться, что информация о нем появилась в соответствующих файлах в системе;
user_task1@nedokormysh-VirtualBox:/home/nedokormysh$ tail /etc/passwd
saned:x:120:129::/var/lib/saned:/usr/sbin/nologin
colord:x:121:130:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
pulse:x:122:131:PulseAudio daemon,,,:/var/run/pulse:/usr/sbin/nologin
speech-dispatcher:x:123:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
nm-openvpn:x:124:133:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
hplip:x:125:7:HPLIP system user,,,:/run/hplip:/bin/false
nedokormysh:x:1000:1000:nedokormysh,,,:/home/nedokormysh:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
sshd:x:126:65534::/run/sshd:/usr/sbin/nologin
user_task1:x:1001:1001::/home/user_task1:/bin/bash
user_task1@nedokormysh-VirtualBox:/home/nedokormysh$ tail /etc/group
avahi:x:128:
saned:x:129:
colord:x:130:
pulse:x:131:
pulse-access:x:132:
nm-openvpn:x:133:
nedokormysh:x:1000:
sambashare:x:134:nedokormysh
vboxsf:x:999:
user_task1:x:1001:
user_task1@nedokormysh-VirtualBox:/home/nedokormysh$ exit
exit
nedokormysh@nedokormysh-VirtualBox:~$ sudo tail /etc/shadow
saned:*:18996:0:99999:7:::
colord:*:18996:0:99999:7:::
pulse:*:18996:0:99999:7:::
speech-dispatcher:!:18996:0:99999:7:::
nm-openvpn:*:18996:0:99999:7:::
hplip:*:18996:0:99999:7:::
nedokormysh:$6$3I0NX6y4GiwCvM1w$ZCSClfENd3JZUh9oEmSOJ7gtlWNUZ1JsLKze.LxjvPFczp/ErWNjZd0UGUBVmSiaWmciGR2boUMU/1XbgIUlr1:19167:0:99999:7:::
vboxadd:!:19059::::::
sshd:*:19171:0:99999:7:::
user_task1:$6$gS8bVja2Ww3vHz6S$yEZx6xhwtuFw5DfziEQxta1EvLJW7lcqxPvcaPS9uXTkUONdrfi28feryiAj5/G3VqyfGVZMwRGoKCFDQ/BUX.:19180:0:99999:7:::
nedokormysh@nedokormysh-VirtualBox:~$ # c) удалить созданного пользователя;
nedokormysh@nedokormysh-VirtualBox:~$ sudo userdel -rf user_task1
userdel: почтовый ящик user_task1 (/var/mail/user_task1) не найден
nedokormysh@nedokormysh-VirtualBox:~$ tail /etc/passwd
avahi:x:119:128:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/usr/sbin/nologin
saned:x:120:129::/var/lib/saned:/usr/sbin/nologin
colord:x:121:130:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
pulse:x:122:131:PulseAudio daemon,,,:/var/run/pulse:/usr/sbin/nologin
speech-dispatcher:x:123:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
nm-openvpn:x:124:133:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
hplip:x:125:7:HPLIP system user,,,:/run/hplip:/bin/false
nedokormysh:x:1000:1000:nedokormysh,,,:/home/nedokormysh:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
sshd:x:126:65534::/run/sshd:/usr/sbin/nologin
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ # 2. Управление группами:
nedokormysh@nedokormysh-VirtualBox:~$ # a) создать группу;
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash user1_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash user2_task2
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ sudo groupadd admins_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo groupadd users_task2
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ tail /etc/group
pulse:x:131:
pulse-access:x:132:
nm-openvpn:x:133:
nedokormysh:x:1000:
sambashare:x:134:nedokormysh
vboxsf:x:999:
user1_task2:x:1001:
user2_task2:x:1002:
admins_task2:x:1003:
users_task2:x:1004:
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -a -G admins_task2 user1_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -a -G admins_task2 user2_task2
nedokormysh@nedokormysh-VirtualBox:~$ groups user1_task2
user1_task2 : user1_task2 admins_task2
nedokormysh@nedokormysh-VirtualBox:~$ groups user2_task2
user2_task2 : user2_task2 admins_task2
nedokormysh@nedokormysh-VirtualBox:~$ # b) попрактиковаться в смене групп у пользователей;
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -g admins_task2 user2_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo addgroup user2_task2 users_task2
Добавляется пользователь «user2_task2» в группу «users_task2» ...
Добавление пользователя user2_task2 в группу users_task2
Готово.
nedokormysh@nedokormysh-VirtualBox:~$ groups user1_task2
user1_task2 : user1_task2 admins_task2
nedokormysh@nedokormysh-VirtualBox:~$ groups user2_task2
user2_task2 : admins_task2 users_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo userdel -rf user1_task2
userdel: почтовый ящик user1_task2 (/var/mail/user1_task2) не найден
nedokormysh@nedokormysh-VirtualBox:~$ sudo userdel -rf user2_task2
userdel: группа user2_task2 не удалена, так как это не первичная группа пользователя user2_task2.
userdel: почтовый ящик user2_task2 (/var/mail/user2_task2) не найден
nedokormysh@nedokormysh-VirtualBox:~$ sudo groupdel ^C
nedokormysh@nedokormysh-VirtualBox:~$ sudo groupdel user2_task2
nedokormysh@nedokormysh-VirtualBox:~$ # c) добавить пользователя в группу, не меняя основной;
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash user3_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -a -G admins_task2 user3_task2
nedokormysh@nedokormysh-VirtualBox:~$ # d) удалить пользователя из группы.
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ id -nG user3_task2
user3_task2 admins_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -G admins_task2 ^Cer3_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -G user3_task2 user3_task2
nedokormysh@nedokormysh-VirtualBox:~$ id -nG user3_task2
user3_task2
nedokormysh@nedokormysh-VirtualBox:~$ sudo userdel -rf user3_task2
userdel: почтовый ящик user3_task2 (/var/mail/user3_task2) не найден
nedokormysh@nedokormysh-VirtualBox:~$
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ # 3. Создать пользователя с правами суперпользователя. Проверить результат.
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash user1_task3
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -a -G sudo user1_task3
nedokormysh@nedokormysh-VirtualBox:~$ su user1_task3
Пароль: 
5su: Сбой при проверке подлинности
nedokormysh@nedokormysh-VirtualBox:~$ sudo passwd user1_task3
Новый пароль : 
Повторите ввод нового пароля : 
passwd: пароль успешно обновлён
nedokormysh@nedokormysh-VirtualBox:~$ su user1_task3
Пароль: 
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

user1_task3@nedokormysh-VirtualBox:/home/nedokormysh$ whoami
user1_task3
user1_task3@nedokormysh-VirtualBox:/home/nedokormysh$ groups
user1_task3 sudo
user1_task3@nedokormysh-VirtualBox:/home/nedokormysh$


nedokormysh@nedokormysh-VirtualBox:~$ # 4. * Используя дополнительные материалы, выдать одному из созданных пользователей право на выполнение ряда команд, требующих прав суперпользователя (команды выбираем на своё усмотрение).
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash user1_task4
[sudo] пароль для nedokormysh:           
nedokormysh@nedokormysh-VirtualBox:~$ sudo passwd user1_task4
Новый пароль : 
Повторите ввод нового пароля : 
passwd: пароль успешно обновлён
nedokormysh@nedokormysh-VirtualBox:~$ users
nedokormysh
nedokormysh@nedokormysh-VirtualBox:~$ tail /etc/passwd
saned:x:120:129::/var/lib/saned:/usr/sbin/nologin
colord:x:121:130:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
pulse:x:122:131:PulseAudio daemon,,,:/var/run/pulse:/usr/sbin/nologin
speech-dispatcher:x:123:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
nm-openvpn:x:124:133:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
hplip:x:125:7:HPLIP system user,,,:/run/hplip:/bin/false
nedokormysh:x:1000:1000:nedokormysh,,,:/home/nedokormysh:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
sshd:x:126:65534::/run/sshd:/usr/sbin/nologin
user1_task4:x:1001:1001::/home/user1_task4:/bin/bash
nedokormysh@nedokormysh-VirtualBox:~$ su user1_task4
Пароль: 
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ whoami
user1_task4
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ sudo useradd -m -s /bin/bash user_test_task4
[sudo] пароль для user1_task4:    
Пользователю user1_task4 запрещено выполнять '/usr/sbin/useradd -m -s /bin/bash user_test_task4' с правами root на nedokormysh-VirtualBox.
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ sudo visudo
[sudo] пароль для user1_task4:    
Пользователю user1_task4 запрещено выполнять '/usr/sbin/visudo' с правами root на nedokormysh-VirtualBox.
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ exit
exit
nedokormysh@nedokormysh-VirtualBox:~$ sudo visudo
nedokormysh@nedokormysh-VirtualBox:~$ su user1_task4
Пароль: 
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ sudo useradd -m -s /bin/bash user_test_task4
[sudo] пароль для user1_task4:
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ sudo visudo
Пользователю user1_task4 запрещено выполнять '/usr/sbin/visudo' с правами root на nedokormysh-VirtualBox.
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ tail /etc/passwd
colord:x:121:130:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
pulse:x:122:131:PulseAudio daemon,,,:/var/run/pulse:/usr/sbin/nologin
speech-dispatcher:x:123:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
nm-openvpn:x:124:133:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
hplip:x:125:7:HPLIP system user,,,:/run/hplip:/bin/false
nedokormysh:x:1000:1000:nedokormysh,,,:/home/nedokormysh:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
sshd:x:126:65534::/run/sshd:/usr/sbin/nologin
user1_task4:x:1001:1001::/home/user1_task4:/bin/bash
user_test_task4:x:1002:1002::/home/user_test_task4:/bin/bash
user1_task4@nedokormysh-VirtualBox:/home/nedokormysh$ exit
exit
nedokormysh@nedokormysh-VirtualBox:~$ sudo userdel -rf user1_task4
userdel: почтовый ящик user1_task4 (/var/mail/user1_task4) не найден
nedokormysh@nedokormysh-VirtualBox:~$ sudo userdel -rf user_test_task4
userdel: почтовый ящик user_test_task4 (/var/mail/user_test_task4) не найден



