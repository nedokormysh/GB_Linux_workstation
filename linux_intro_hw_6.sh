nedokormysh@nedokormysh-VirtualBox:~/homeworks$ # 1. Вывести на экран 3 раза имя пользователя, от которого запускается команда.
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ nano username3.sh
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ cat username3.sh 
# !/bin/bash
for ((i=0; i < 3; i++))
do
echo "User name: " $USER
done
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ sudo chmod 777 username3.sh 
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ ./username3.sh 
User name:  nedokormysh
User name:  nedokormysh
User name:  nedokormysh
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ su usertemp
Пароль: 
usertemp@nedokormysh-VirtualBox:/home/nedokormysh/homeworks$ ./username3.sh 
User name:  usertemp
User name:  usertemp
User name:  usertemp
usertemp@nedokormysh-VirtualBox:/home/nedokormysh/homeworks$



nedokormysh@nedokormysh-VirtualBox:~/homeworks$ #2. Вывести с помощью цикла while все четные числа от 0 до 100 включительно.
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ nano while100.sh
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ cat while100.sh 

# !/bin/bash
x=0
while [ $x -lt 101 ]
do
echo $x
x=$(( $x + 2 ))
done
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ sudo chmod u+x while100.sh 
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ ./while100.sh 
0
2
4
6
8
10
12
14
16
18
20
22
24
26
28
30
32
34
36
38
40
42
44
46
48
50
52
54
56
58
60
62
64
66
68
70
72
74
76
78
80
82
84
86
88
90
92
94
96
98
100


nedokormysh@nedokormysh-VirtualBox:~$ #3. Создать с помощью nano файл test.txt. Настроить автоматический бэкап этого файла раз в 10 минут в файл с названием test.txt.bak с использованием cron.
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ nano test.txt
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ crontab -e
crontab: installing new crontab
nedokormysh@nedokormysh-VirtualBox:~/homeworks$ crontab -l
*/10 * * * * cp -rf  ~/homeworks/test.txt ~/homeworks/test_copy.txt







