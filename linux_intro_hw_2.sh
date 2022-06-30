nedokormysh@nedokormysh-VirtualBox:~$ # Task1
nedokormysh@nedokormysh-VirtualBox:~$ # Создать каталоги students и mentors в домашней директории, а в них — текстовые файлы students_list.txt и mentors_list.txt соответственно.
nedokormysh@nedokormysh-VirtualBox:~$ cd ~
nedokormysh@nedokormysh-VirtualBox:~$ ls
 lws   PycharmProjects   Видео   Документы   Загрузки   Изображения   Музыка   Общедоступные  'Рабочий стол'   Шаблоны
nedokormysh@nedokormysh-VirtualBox:~$ mkdir students
nedokormysh@nedokormysh-VirtualBox:~$ mkdir mentors
nedokormysh@nedokormysh-VirtualBox:~$ cd students/
nedokormysh@nedokormysh-VirtualBox:~/students$ echo > students_list.txt
nedokormysh@nedokormysh-VirtualBox:~/students$ ls
students_list.txt
nedokormysh@nedokormysh-VirtualBox:~/students$ cd ..
nedokormysh@nedokormysh-VirtualBox:~$ cd mentors/
nedokormysh@nedokormysh-VirtualBox:~/mentors$ echo > mentors_list.txt
nedokormysh@nedokormysh-VirtualBox:~/mentors$ ls
mentors_list.txt
nedokormysh@nedokormysh-VirtualBox:~/mentors$ # Task2
nedokormysh@nedokormysh-VirtualBox:~/mentors$ # Открыть созданные в п.1 файлы в любом текстовом редакторе и заполнить их (в соответствии с названием) списком Ваших одногруппников и наставников на данном потоке.
nedokormysh@nedokormysh-VirtualBox:~/mentors$ vim mentors_list.txt 
nedokormysh@nedokormysh-VirtualBox:~/mentors$ head mentors_list.txt 
Кирилл Иванов
Елена Федотова
nedokormysh@nedokormysh-VirtualBox:~/mentors$ vim ~/students/students_list.txt 
nedokormysh@nedokormysh-VirtualBox:~/mentors$ head  ~/students/students_list.txt 
Владимир Соколов

Дмитрий Черепанов

Александр Петренко

Антон Абрамов

Вардан Бабаян

nedokormysh@nedokormysh-VirtualBox:~/mentors$ # Task3
nedokormysh@nedokormysh-VirtualBox:~/mentors$ # Переместите файл mentors_list.txt в папку students.
nedokormysh@nedokormysh-VirtualBox:~/mentors$ mv mentors_list.txt ~/students/
nedokormysh@nedokormysh-VirtualBox:~/mentors$ ls
nedokormysh@nedokormysh-VirtualBox:~/mentors$ cd ~/students
nedokormysh@nedokormysh-VirtualBox:~/students$ ls
mentors_list.txt  students_list.txt
nedokormysh@nedokormysh-VirtualBox:~/students$ # Task4
nedokormysh@nedokormysh-VirtualBox:~/students$ # Удалите папку mentors.
nedokormysh@nedokormysh-VirtualBox:~/students$ rm ~/mentors -r
nedokormysh@nedokormysh-VirtualBox:~/students$ cd ..
nedokormysh@nedokormysh-VirtualBox:~$ ls
 lws   PycharmProjects   students   Видео   Документы   Загрузки   Изображения   Музыка   Общедоступные  'Рабочий стол'   Шаблоны
nedokormysh@nedokormysh-VirtualBox:~$ # Task5
nedokormysh@nedokormysh-VirtualBox:~$ # Переименуйте папку students в students_and_mentors.
nedokormysh@nedokormysh-VirtualBox:~$ mv students/  students_and_mentors/
nedokormysh@nedokormysh-VirtualBox:~$ ls
 lws   PycharmProjects   students_and_mentors   Видео   Документы   Загрузки   Изображения   Музыка   Общедоступные  'Рабочий стол'   Шаблоны
nedokormysh@nedokormysh-VirtualBox:~$ # Task6
nedokormysh@nedokormysh-VirtualBox:~$ # Удалите папку students_and_mentors вместе с содержимым.
nedokormysh@nedokormysh-VirtualBox:~$ rm students_and_mentors/ -r
nedokormysh@nedokormysh-VirtualBox:~$ ls
 lws   PycharmProjects   Видео   Документы   Загрузки   Изображения   Музыка   Общедоступные  'Рабочий стол'   Шаблоны
nedokormysh@nedokormysh-VirtualBox:~$ # Task7
nedokormysh@nedokormysh-VirtualBox:~$ Подключитесь к машине с Linux по протоколу SSH.
Подключитесь: команда не найдена
nedokormysh@nedokormysh-VirtualBox:~$ # Подключитесь к машине с Linux по протоколу SSH.
nedokormysh@nedokormysh-VirtualBox:~$ hostname -I
192.168.1.35 
nedokormysh@nedokormysh-VirtualBox:~$ systemctl status sshd
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
     Active: active (running) since Wed 2022-06-29 20:24:17 MSK; 50min ago
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 668 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 683 (sshd)
      Tasks: 1 (limit: 4608)
     Memory: 2.7M
     CGroup: /system.slice/ssh.service
             └─683 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups

июн 29 20:24:15 nedokormysh-VirtualBox systemd[1]: Starting OpenBSD Secure Shell server...
июн 29 20:24:17 nedokormysh-VirtualBox sshd[683]: Server listening on 0.0.0.0 port 22.
июн 29 20:24:17 nedokormysh-VirtualBox sshd[683]: Server listening on :: port 22.
июн 29 20:24:17 nedokormysh-VirtualBox systemd[1]: Started OpenBSD Secure Shell server.
июн 29 20:49:30 nedokormysh-VirtualBox sshd[2946]: Accepted password for nedokormysh from 192.168.1.57 port 13395 ssh2
июн 29 20:49:30 nedokormysh-VirtualBox sshd[2946]: pam_unix(sshd:session): session opened for user nedokormysh by (uid=0)
nedokormysh@nedokormysh-VirtualBox:~$ #следующая часть из Putty клиента
Using username "nedokormysh".
nedokormysh@192.168.1.35's password:
Last login: Wed Jun 29 20:49:30 2022 from 192.168.1.57
nedokormysh@nedokormysh-VirtualBox:~$
nedokormysh@nedokormysh-VirtualBox:~$ who
nedokormysh tty7         2022-06-29 20:25 (:0)
nedokormysh pts/1        2022-06-29 21:18 (192.168.1.57)

nedokormysh@nedokormysh-VirtualBox:~$ # Task8
nedokormysh@nedokormysh-VirtualBox:~$ # (*) Используя дополнительный материал, настроить авторизацию по SSH с использованием ключей.
nedokormysh@nedokormysh-VirtualBox:~$ # Ключи создавал в Putty

nedokormysh@nedokormysh-VirtualBox:~$ #следующая часть из Putty клиента
Using username "nedokormysh".
nedokormysh@192.168.1.35's password:
Last login: Wed Jun 29 21:59:55 2022 from 192.168.1.57
nedokormysh@nedokormysh-VirtualBox:~$ mkdir .ssh
nedokormysh@nedokormysh-VirtualBox:~$ cd .ssh
nedokormysh@nedokormysh-VirtualBox:~/.ssh$ vim authorized_keys
nedokormysh@nedokormysh-VirtualBox:~/.ssh$

Using username "nedokormysh".
Authenticating with public key "rsa-key-20220629"
Last login: Wed Jun 29 22:01:31 2022 from 192.168.1.57
nedokormysh@nedokormysh-VirtualBox:~$