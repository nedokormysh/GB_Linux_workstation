nedokormysh@nedokormysh-VirtualBox:~/lws$ # 1. Создать файл file1 и наполнить его произвольным содержимым. Скопировать его в file2. 
nedokormysh@nedokormysh-VirtualBox:~/lws$ echo random content > file1
nedokormysh@nedokormysh-VirtualBox:~/lws$ ls
file1
nedokormysh@nedokormysh-VirtualBox:~/lws$ cat file1
random content
nedokormysh@nedokormysh-VirtualBox:~/lws$ cp file1 file2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ls
file1  file2
nedokormysh@nedokormysh-VirtualBox:~/lws$ # Создать символическую ссылку file3 на file1. Создать жёсткую ссылку file4 на file1.
nedokormysh@nedokormysh-VirtualBox:~/lws$ ln -s file1 file3
nedokormysh@nedokormysh-VirtualBox:~/lws$ ln file1 file4
nedokormysh@nedokormysh-VirtualBox:~/lws$ # Посмотреть, какие inode у файлов. Удалить file1. Что стало с остальными созданными файлами? Попробовать вывести их на экран.
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll -i file*
188569 -rw-rw-r-- 2 nedokormysh nedokormysh 15 авг  6 12:59 file1
188577 -rw-rw-r-- 1 nedokormysh nedokormysh 15 авг  6 13:01 file2
188698 lrwxrwxrwx 1 nedokormysh nedokormysh  5 авг  6 13:04 file3 -> file1
188569 -rw-rw-r-- 2 nedokormysh nedokormysh 15 авг  6 12:59 file4
nedokormysh@nedokormysh-VirtualBox:~/lws$ rm file1
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll -i file*
188577 -rw-rw-r-- 1 nedokormysh nedokormysh 15 авг  6 13:01 file2
188698 lrwxrwxrwx 1 nedokormysh nedokormysh  5 авг  6 13:04 file3 -> file1
188569 -rw-rw-r-- 1 nedokormysh nedokormysh 15 авг  6 12:59 file4
nedokormysh@nedokormysh-VirtualBox:~/lws$ cat file1
cat: file1: Нет такого файла или каталога
nedokormysh@nedokormysh-VirtualBox:~/lws$ cat file2
random content
nedokormysh@nedokormysh-VirtualBox:~/lws$ cat file3
cat: file3: Нет такого файла или каталога
nedokormysh@nedokormysh-VirtualBox:~/lws$ cat file4
random content
nedokormysh@nedokormysh-VirtualBox:~/lws$ # inode у file1 и file4 одинаковые. После удаления file1 больше не можем открыть и file3. Но file4 открывается.


nedokormysh@nedokormysh-VirtualBox:~/lws$ #2. Дать созданным файлам другие, произвольные имена. Создать новую символическую ссылку. Переместить ссылки в другую директорию.
nedokormysh@nedokormysh-VirtualBox:~/lws$ ls
file2  file3  file4
nedokormysh@nedokormysh-VirtualBox:~/lws$ rm file3
nedokormysh@nedokormysh-VirtualBox:~/lws$ mv file2 file2.task2
nedokormysh@nedokormysh-VirtualBox:~/lws$ mv file4 file4.task2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ls
file2.task2  file4.task2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ln -s file2.task2 softlinkfile2.task2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll
итого 16
drwxrw-r--  2 nedokormysh nedokormysh 4096 авг  6 13:20 ./
drwxr-xr-x 23 nedokormysh nedokormysh 4096 авг  6 13:17 ../
-rw-rw-r--  1 nedokormysh nedokormysh   15 авг  6 13:01 file2.task2
-rw-rw-r--  1 nedokormysh nedokormysh   15 авг  6 12:59 file4.task2
lrwxrwxrwx  1 nedokormysh nedokormysh   11 авг  6 13:20 softlinkfile2.task2 -> file2.task2
nedokormysh@nedokormysh-VirtualBox:~/lws$ cd ..
nedokormysh@nedokormysh-VirtualBox:~$ mkdir lws2
nedokormysh@nedokormysh-VirtualBox:~$ cd lws
nedokormysh@nedokormysh-VirtualBox:~/lws$ mv softlinkfile2.task2 ~/lws2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll
итого 16
drwxrw-r--  2 nedokormysh nedokormysh 4096 авг  6 13:31 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  6 13:23 ../
-rw-rw-r--  1 nedokormysh nedokormysh   15 авг  6 13:01 file2.task2
-rw-rw-r--  1 nedokormysh nedokormysh   15 авг  6 12:59 file4.task2
nedokormysh@nedokormysh-VirtualBox:~/lws$
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll ~/lws2
итого 8
drwxrwxr-x  2 nedokormysh nedokormysh 4096 авг  6 13:31 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  6 13:23 ../
lrwxrwxrwx  1 nedokormysh nedokormysh   11 авг  6 13:20 softlinkfile2.task2 -> file2.task2

nedokormysh@nedokormysh-VirtualBox:~/lws$ #3. Создать два произвольных файла. Первому присвоить права на чтение и запись для владельца и группы, только на чтение — для всех. Второму присвоить права на чтение и запись только для владельца.
nedokormysh@nedokormysh-VirtualBox:~/lws$ touch f1 f2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll
итого 8
drwxrw-r--  2 nedokormysh nedokormysh 4096 авг  6 13:41 ./
drwxr-xr-x 23 nedokormysh nedokormysh 4096 авг  6 13:37 ../
-rw-rw-r--  1 nedokormysh nedokormysh    0 авг  6 13:41 f1
-rw-rw-r--  1 nedokormysh nedokormysh    0 авг  6 13:41 f2
nedokormysh@nedokormysh-VirtualBox:~/lws$ chmod a-rwx f*
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll
итого 8
drwxrw-r--  2 nedokormysh nedokormysh 4096 авг  6 13:41 ./
drwxr-xr-x 23 nedokormysh nedokormysh 4096 авг  6 13:37 ../
----------  1 nedokormysh nedokormysh    0 авг  6 13:41 f1
----------  1 nedokormysh nedokormysh    0 авг  6 13:41 f2
nedokormysh@nedokormysh-VirtualBox:~/lws$ chmod ug+rw,o+r f1
nedokormysh@nedokormysh-VirtualBox:~/lws$ chmod u+rw f2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll
итого 8
drwxrw-r--  2 nedokormysh nedokormysh 4096 авг  6 13:41 ./
drwxr-xr-x 23 nedokormysh nedokormysh 4096 авг  6 13:37 ../
-rw-rw-r--  1 nedokormysh nedokormysh    0 авг  6 13:41 f1
-rw-------  1 nedokormysh nedokormysh    0 авг  6 13:41 f2
nedokormysh@nedokormysh-VirtualBox:~/lws$ chmod a-rwx f*
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll
итого 8
drwxrw-r--  2 nedokormysh nedokormysh 4096 авг  6 13:41 ./
drwxr-xr-x 23 nedokormysh nedokormysh 4096 авг  6 13:37 ../
----------  1 nedokormysh nedokormysh    0 авг  6 13:41 f1
----------  1 nedokormysh nedokormysh    0 авг  6 13:41 f2
nedokormysh@nedokormysh-VirtualBox:~/lws$ chmod 664 f1
nedokormysh@nedokormysh-VirtualBox:~/lws$ chmod 600 f2
nedokormysh@nedokormysh-VirtualBox:~/lws$ ll
итого 8
drwxrw-r--  2 nedokormysh nedokormysh 4096 авг  6 13:41 ./
drwxr-xr-x 23 nedokormysh nedokormysh 4096 авг  6 13:37 ../
-rw-rw-r--  1 nedokormysh nedokormysh    0 авг  6 13:41 f1
-rw-------  1 nedokormysh nedokormysh    0 авг  6 13:41 f2


nedokormysh@nedokormysh-VirtualBox:~/lws$ # 4. * Создать группу developer и нескольких пользователей, входящих в неё. Создать директорию для совместной работы.

nedokormysh@nedokormysh-VirtualBox:~$ sudo groupadd developer
[sudo] пароль для nedokormysh:           
nedokormysh@nedokormysh-VirtualBox:~$ 
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash devuser1

nedokormysh@nedokormysh-VirtualBox:~$ sudo passwd devuser1
Новый пароль : 
Повторите ввод нового пароля : 
passwd: пароль успешно обновлён
nedokormysh@nedokormysh-VirtualBox:~$ sudo useradd -m -s /bin/bash devuser2
nedokormysh@nedokormysh-VirtualBox:~$ sudo passwd devuser2
Новый пароль : 
Повторите ввод нового пароля : 
passwd: пароль успешно обновлён
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -a -G developer devuser1
nedokormysh@nedokormysh-VirtualBox:~$ sudo usermod -a -G developer devuser2
nedokormysh@nedokormysh-VirtualBox:~$ mkdir developers
nedokormysh@nedokormysh-VirtualBox:~$ ll developers/
итого 8
drwxrwxr-x  2 nedokormysh nedokormysh 4096 авг  6 17:43 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  6 17:43 ../
nedokormysh@nedokormysh-VirtualBox:~$ sudo chown root:developer developer/
chown: невозможно получить доступ к 'developer/': Нет такого файла или каталога
nedokormysh@nedokormysh-VirtualBox:~$ sudo chown root:developer developers
nedokormysh@nedokormysh-VirtualBox:~$ ll developers/
итого 8
drwxrwxr-x  2 root        developer   4096 авг  6 17:43 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  6 17:43 ../
nedokormysh@nedokormysh-VirtualBox:~$ sudo chmod 775 developers
nedokormysh@nedokormysh-VirtualBox:~$ ll developers
итого 8
drwxrwxr-x  2 root        developer   4096 авг  6 17:43 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  6 17:43 ../
nedokormysh@nedokormysh-VirtualBox:~$ sudo chmod g+s developers
nedokormysh@nedokormysh-VirtualBox:~$ ll developers
итого 8
drwxrwsr-x  2 root        developer   4096 авг  6 17:43 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  6 17:43 ../
nedokormysh@nedokormysh-VirtualBox:~$ su devuser1
Пароль: 
devuser1@nedokormysh-VirtualBox:/home/nedokormysh$ ls
 developers        Видео       Изображения    'Рабочий стол'
 lws               Документы   Музыка          Шаблоны
 PycharmProjects   Загрузки    Общедоступные
devuser1@nedokormysh-VirtualBox:/home/nedokormysh$ cd developers/
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers$ ls
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers$ echo hello >> f1dev
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers$ cat f1dev 
hello
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers$ su devuser2
Пароль: 
devuser2@nedokormysh-VirtualBox:/home/nedokormysh/developers$ echo test >> f1
devuser2@nedokormysh-VirtualBox:/home/nedokormysh/developers$ echo test >>f1dev 
devuser2@nedokormysh-VirtualBox:/home/nedokormysh/developers$ cat f1
f1     f1dev  
devuser2@nedokormysh-VirtualBox:/home/nedokormysh/developers$ cat f1dev 
hello
test
devuser2@nedokormysh-VirtualBox:/home/nedokormysh/developers$ su nedokormysh
Пароль: 
nedokormysh@nedokormysh-VirtualBox:~/developers$ echo test2 >> f1dev 
bash: f1dev: Отказано в доступе


nedokormysh@nedokormysh-VirtualBox:~/lws$ # 5. * Создать в директории для совместной работы поддиректорию для обмена файлами, но чтобы удалять файлы могли только их создатели.


nedokormysh@nedokormysh-VirtualBox:~$ cd developers/
nedokormysh@nedokormysh-VirtualBox:~/developers$ sudo mkdir dev_share
[sudo] пароль для nedokormysh:           
nedokormysh@nedokormysh-VirtualBox:~/developers$ ll
итого 12
drwxrwsr-x  3 root        developer   4096 авг  7 16:44 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  7 15:42 ../
drwxr-sr-x  2 root        developer   4096 авг  7 16:44 dev_share/
nedokormysh@nedokormysh-VirtualBox:~/developers$ sudo chmod ug+rw ~/developers/dev_share
nedokormysh@nedokormysh-VirtualBox:~/developers$ ll
итого 12
drwxrwsr-x  3 root        developer   4096 авг  7 16:44 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  7 15:42 ../
drwxrwsr-x  2 root        developer   4096 авг  7 16:44 dev_share/
nedokormysh@nedokormysh-VirtualBox:~/developers$ sudo chmod +t ~/developers/dev_share/
nedokormysh@nedokormysh-VirtualBox:~/developers$ ll
итого 12
drwxrwsr-x  3 root        developer   4096 авг  7 16:44 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  7 15:42 ../
drwxrwsr-t  2 root        developer   4096 авг  7 16:44 dev_share/
nedokormysh@nedokormysh-VirtualBox:~/developers$ su devuser1
Пароль: 
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers$ cd dev_share/
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers/dev_share$ echo > f1
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers/dev_share$ ll
итого 12
drwxrwsr-t 2 root     developer 4096 авг  7 16:46 ./
drwxrwsr-x 3 root     developer 4096 авг  7 16:44 ../
-rw-rw-r-- 1 devuser1 developer    1 авг  7 16:46 f1
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers/dev_share$ su devuser2
Пароль: 
devuser2@nedokormysh-VirtualBox:/home/nedokormysh/developers/dev_share$ rm f1
rm: невозможно удалить 'f1': Операция не позволена
devuser2@nedokormysh-VirtualBox:/home/nedokormysh/developers/dev_share$ su devuser1
Пароль: 
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers/dev_share$ rm f1
devuser1@nedokormysh-VirtualBox:/home/nedokormysh/developers/dev_share$ ls



nedokormysh@nedokormysh-VirtualBox:~$ # 6. * Создать директорию, в которой есть несколько файлов. Сделать так, чтобы открыть файлы можно было посмотреть, только зная имя файла, а через ls список файлов посмотреть было нельзя.
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ mkdir task6dir
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ ll
итого 12
drwxr-xr-x  3 nedokormysh nedokormysh 4096 авг  7 17:16 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  7 17:13 ../
drwxrwxr-x  2 nedokormysh nedokormysh 4096 авг  7 17:16 task6dir/
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ cd task6dir/
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ echo file1 task6 > f1
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ echo file2 task6 > f2
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ ll
итого 16
drwxrwxr-x 2 nedokormysh nedokormysh 4096 авг  7 17:16 ./
drwxr-xr-x 3 nedokormysh nedokormysh 4096 авг  7 17:16 ../
-rw-rw-r-- 1 nedokormysh nedokormysh   12 авг  7 17:16 f1
-rw-rw-r-- 1 nedokormysh nedokormysh   12 авг  7 17:16 f2
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ sudo chmod 111 ~/homeworks/task6dir/
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ cd ..
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ ll
итого 12
drwxr-xr-x  3 nedokormysh nedokormysh 4096 авг  7 17:16 ./
drwxr-xr-x 24 nedokormysh nedokormysh 4096 авг  7 17:13 ../
d--x--x--x  2 nedokormysh nedokormysh 4096 авг  7 17:16 task6dir/
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ cd task6dir/
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ ll
ls: невозможно открыть каталог '.': Отказано в доступе
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ cat ~/homeworks/task6dir/f1
file1 task6
nedokormysh@nedokormysh-VirtualBox:~/homeworks/task6dir$ 




