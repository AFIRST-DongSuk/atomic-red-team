#------------------------------------------------------------
#User Excution - Malicious Link
#invoke-atomictest T1204.001A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #manual #악성링크 클릭
#pause
#------------------------------------------------------------
#Credential Access - Network Sniffing
# Atomic Test #4 - Windows Internal Packet Capture 
#invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #수동 테스트 
#invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 60 #press a key to continue... #프로그램 실행종료후 입력대기 문제로 120초 타임아웃 발생. 60초로 제한시간 수정
#pause

#Credential Access - OS Credential Dumping(T1003)
# Atomic Test #2 - Credential Dumping with NPPSpy
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자 권한 #manual
#pause

#------------------------------------------------------------
# Credential Access - OS Credential Dumping(T1003) T1003.001 - LSASS Memory
invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트 #manual
pause

#------------------------------------------------------------
# Privilege Escalation - Abuse Elevation Control Mechanism(T1548) - T1548.002 - Bypass User Account Control
invoke-atomictest T1548.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #실행은 성공되나 파워쉘이 종료됨 #manual 테스트
pause

#------------------------------------------------------------
# Lateral Movement - Remote Services(T1021) - T1021.002 - SMB/Windows Admin Shares
invoke-atomictest T1021.002A -testnumber 1 -ExecutionLogPath $ExecutionLogPath #수동 테스트
pause

#------------------------------------------------------------
# Collection - Screen Capture - T1113 - Screen Capture
# Atomic Test #5 - Windows Screencapture
invoke-atomictest T1113 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #manual
pause

# Collection - Man in the Browser(T1185)
#invoke-atomictest T1185A -testnumber 1 -ExecutionLogPath -ExecutionLogPath $ExecutionLogPath #manual
#pause

#------------------------------------------------------------
#Command and Control - Web Service: Bidirectional Communication(T1102.002A)
#invoke-atomictest T1102.002A -testnumber 1 -ExecutionLogPath -ExecutionLogPath $ExecutionLogPath #manual

#------------------------------------------------------------
#Impact - System Shutdown/Reboot(T1529) T1529 - System Shutdown/Reboot
# Atomic Test #1 - Shutdown System - Windows
#invoke-atomictest T1529 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한 #수동 실행
#pause

# Atomic Test #2 - Restart System - Windows
#invoke-atomictest T1529 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 원한 #수동 실행
#pause

