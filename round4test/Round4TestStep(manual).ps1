#------------------------------------------------------------
#Credential Access - Network Sniffing
# Atomic Test #4 - Windows Internal Packet Capture 
invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #수동 테스트 
invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #press a key to continue... #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정

#Credential Access - OS Credential Dumping(T1003)
# Atomic Test #2 - Credential Dumping with NPPSpy
invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual

#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot
# Atomic Test #1 - Shutdown System - Windows
invoke-atomictest T1529 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #수동 실행

# Atomic Test #2 - Restart System - Windows
invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 원한 #수동 실행

