$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="C:\r5\atomic-red-team\atomics"}
$ExecutionLogPath = "C:\r5\atomic-red-team\atomictest.log"
Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

Start-Transcript "C:\r5\atomic-red-team\Result.log"
#---------------------------------------------------------------------------------------
# T1001.002 Data Obfuscation: Steganography
#---------------------------------------------------------------------------------------
# N/A
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1003 - OS Credential Dumping
#---------------------------------------------------------------------------------------
#invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 

#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #테스트 후 로그아웃 해야지 파일이 생성됨.  lock 안됨. #수동 테스트
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1003.001 - OS Credential Dumping: LSASS Memory
#---------------------------------------------------------------------------------------
# invoke-atomictest T1003.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트 #manual테스트
# invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
# invoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath  #관리자권한
# invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요 #관리자권한
# invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
# invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨. #관리자권한
# ART 내부 에러 발생 (C:\Users\Administrator\AppData\Local\Temp\art-out-T1003.001-12.txt 파일 삭제 불가)
# invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1003.003 - OS Credential Dumping: NTDS
#---------------------------------------------------------------------------------------
# invoke-atomictest T1003.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath  #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# Volume shadow copy must exist 에러 메시지 발생 (ExecutionLogPath)실행에는 문제 없음
# invoke-atomictest T1003.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
# invoke-atomictest T1003.003 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1005 - Data from Local System
#---------------------------------------------------------------------------------------
# N/A
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1007 - System Service Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1007 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1007 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1007 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1007 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1010 - Application Window Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1010 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1010 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1012 - Query Registry
#---------------------------------------------------------------------------------------
invoke-atomictest T1012 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1012 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1014 - Rootkit
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1016 - System Network Configuration Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1016 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1016.001 - System Network Configuration Discovery: Internet Connection Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1016.001A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016.001A -testnumber 2 -ExecutionLogPath $ExecutionLogPath #tracert 명령어를 이용 외부 네트워크 통신 테스트 → 방화벽 문제?? 발생
invoke-atomictest T1016.001A -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1018 - Remote System Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1018 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # net view 명령어 사용 ( Computer Browser 서비스 동작해야 명령어 사용가능)
invoke-atomictest T1018 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # AD 환경 도메인 연결돼야함.
invoke-atomictest T1018 -testnumber 3 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1018 -testnumber 4 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 15
invoke-atomictest T1018 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1018 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1018 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1018 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #  AD에서 실행, 관리자 권한
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1020 - Automated Exfiltration
#---------------------------------------------------------------------------------------
invoke-atomictest T1020 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1020 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1021.002 - Remote Services
#---------------------------------------------------------------------------------------
# 1021.004 Remote Services: SSH으로 대체
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1021.002 - Remote Services: SMB/Windows Admin Shares
#---------------------------------------------------------------------------------------
invoke-atomictest T1021.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1021.002 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1021.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1021.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1021.004 Remote Services: SSH
#---------------------------------------------------------------------------------------
invoke-atomictest T1021.004A -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.004A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.004A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1021.006 - Remote Services: Windows Remote Management
#---------------------------------------------------------------------------------------
invoke-atomictest T1021.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1021.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1021.006 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1021.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1027 - Obfuscated Files or Information
#---------------------------------------------------------------------------------------
invoke-atomictest T1027 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1027 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #메일 전송 문제
# invoke-atomictest T1027 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #HTTP 방식으로 민감 데이터 전송 (서버 구축 필요)
# invoke-atomictest T1027 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #manual
# invoke-atomictest T1027 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #manual

#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1033 - System Owner/User Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1033 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1033 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1033 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1033 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1033 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1033 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1036 - Masquerading
#---------------------------------------------------------------------------------------
invoke-atomictest T1036 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1036.004 - Masquerading: Masquerade Task or Service
#---------------------------------------------------------------------------------------
# invoke-atomictest T1036.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1036.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1036.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #관리자 권한
# invoke-atomictest T1036.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1036.005 - Masquerading: Match Legitimate Name or Location
#---------------------------------------------------------------------------------------
invoke-atomictest T1036.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1037 - Boot or Logon Initialization Scripts
#---------------------------------------------------------------------------------------
invoke-atomictest T1037.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1037.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1040 - Network Sniffing
#---------------------------------------------------------------------------------------
invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1040 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1040 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1040 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1040 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1041 - Exfiltration Over C2 Channel
#---------------------------------------------------------------------------------------
invoke-atomictest T1041 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1047 - Windows Management Instrumentation
#---------------------------------------------------------------------------------------
invoke-atomictest T1047 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 9 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1047 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1047 -testnumber 10 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1047 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1047 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1048 - Exfiltration Over Alternative Protocol
#---------------------------------------------------------------------------------------
# invoke-atomictest T1048 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1048 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # doh 미구동..
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1049 - System Network Connections Discovery
#---------------------------------------------------------------------------------------

invoke-atomictest T1049 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1049 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1049 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

# invoke-atomictest T1049 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1053.005 - Scheduled Task/Job: Scheduled Task
#---------------------------------------------------------------------------------------
invoke-atomictest T1053.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.005 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1053.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1053.005 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1055 - Process Injection
#---------------------------------------------------------------------------------------
# invoke-atomictest T1055 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1055 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
# invoke-atomictest T1055 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1055 -testnumber 2 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1055.001 - Process Injection: Dynamic-link Library Injection
#---------------------------------------------------------------------------------------
# invoke-atomictest T1055.001 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1055.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1055.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1056.001 - Input Capture: Keylogging
#---------------------------------------------------------------------------------------
# invoke-atomictest T1056.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 수동 테스트
# invoke-atomictest T1056.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 수동 테스트
# invoke-atomictest T1056.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #수동 테스트
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1057 - Process Discovery
#---------------------------------------------------------------------------------------
# invoke-atomictest T1057 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1057 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1057 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1057 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1059.001 - Command and Scripting Interpreter: PowerShell
#---------------------------------------------------------------------------------------
invoke-atomictest T1059.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 12 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 12 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 13 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 15 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 16 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 17 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 18 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath

# invoke-atomictest T1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1059.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1059.001 -testnumber 14 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1059.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1059.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #manual
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1059.003 - Command and Scripting Interpreter: Windows Command Shell
#---------------------------------------------------------------------------------------
invoke-atomictest T1059.003 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1059.007 - Command and Scripting Interpreter: JavaScript
#---------------------------------------------------------------------------------------
# invoke-atomictest T1059.007 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #확인 필요
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1069.001 - Permission Groups Discovery: Local Groups
#---------------------------------------------------------------------------------------
invoke-atomictest T1069.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.001 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1069.002 - Permission Groups Discovery: Domain Groups
#---------------------------------------------------------------------------------------
invoke-atomictest T1069.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1069.002 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1069.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1069.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한 #에러 발생 
# invoke-atomictest T1069.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1069.002 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1069.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1070 - Indicator Removal on Host
#---------------------------------------------------------------------------------------
# invoke-atomictest T1070 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1070.001 - Indicator Removal on Host: Clear Windows Event Logs
#---------------------------------------------------------------------------------------
# invoke-atomictest T1070.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1070.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1070.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1070.003 - Indicator Removal on Host: Clear Command History
#---------------------------------------------------------------------------------------
invoke-atomictest T1070.003 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1070.004 - Indicator Removal on Host: File Deletion
#---------------------------------------------------------------------------------------
invoke-atomictest T1070.004 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.004 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1071.001 - Application Layer Protocol: Web Protocols
#---------------------------------------------------------------------------------------
#invoke-atomictest T1071.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1071.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1071.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1074.001 - Data Staged: Local Data Staging
#---------------------------------------------------------------------------------------
invoke-atomictest T1074.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1074.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1074.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1074.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1078.001 - Valid Accounts: Default Accounts
#---------------------------------------------------------------------------------------
# invoke-atomictest T1078.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1078.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1078.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1078.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1078.003 - Valid Accounts: Local Accounts
#---------------------------------------------------------------------------------------
# invoke-atomictest T1078.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1078.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1078.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1078.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1082 - System Information Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1082 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 21 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1082 -testnumber 22 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1083 - File and Directory Discovery
#---------------------------------------------------------------------------------------
# invoke-atomictest T1083 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1083 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1087.001 - Account Discovery: Local Account
#---------------------------------------------------------------------------------------
invoke-atomictest T1087.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1087.002 - Account Discovery: Domain Account
#---------------------------------------------------------------------------------------
# invoke-atomictest T1087.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 10 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 16 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1090.001 - Proxy: Internal Proxy
#---------------------------------------------------------------------------------------
# invoke-atomictest T1090.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1090.001 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1095 - Non-Application Layer Protocol
#---------------------------------------------------------------------------------------
# invoke-atomictest T1087.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1105 - Ingress Tool Transfer
#---------------------------------------------------------------------------------------
invoke-atomictest T1105 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 18 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 19 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 21 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 21 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 21 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 22 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 23 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 24 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 25 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 25 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 26 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 26 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 28 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 28 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 28 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 29 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 29 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1105 -testnumber 12 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1105 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1106 - Native API
#---------------------------------------------------------------------------------------
invoke-atomictest T1106 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1106 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1106 -testnumber 2 -ExecutionLogpath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1106 -testnumber 3 -ExecutionLogpath $ExecutionLogPath # 관리자 권한 timeout 문제 발생, 동작에는 문제없음
# invoke-atomictest T1106 -testnumber 4 -ExecutionLogpath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1110.003 - Brute Force: Password Spraying
#---------------------------------------------------------------------------------------
# invoke-atomictest T1110.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Azure-ad 
# invoke-atomictest T1110.003 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Azure-ad
# invoke-atomictest T1110.003 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1110.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1112 - Modify Registry
#---------------------------------------------------------------------------------------
invoke-atomictest T1112 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1112 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1112 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1112 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath

# invoke-atomictest T1112 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 7 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# # invoke-atomictest T1112 -testnumber 12 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 13 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# # invoke-atomictest T1112 -testnumber 15 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 16 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 17 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 18 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 19 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 19 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 20 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 20 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 21 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 21 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 22 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 23 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 24 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 25 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 25 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 26 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 26 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 27 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 27 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 28 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 28 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 29 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 29 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 30 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 30 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 31 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 31 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 32 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 32 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 33 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 33 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 34 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 34 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 35 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 35 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 36 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 36 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 37 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 37 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 38 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 38 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 39 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 39 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 40 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 40 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 41 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1112 -testnumber 41 -Cleanup -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
# invoke-atomictest T1112 -testnumber 42 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
# invoke-atomictest T1112 -testnumber 42 -Cleanup -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
# # invoke-atomictest T1112 -testnumber 43 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
# invoke-atomictest T1112 -testnumber 43 -Cleanup -ExecutionLogPath $ExecutionLogPath  # 관리자 권한

#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1119 - Automated Collection
#---------------------------------------------------------------------------------------
invoke-atomictest T1119 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1119 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1119 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1119 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1119 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1119 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1119 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1119 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1124 - System Time Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1124 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1124 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1124 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1134.001 - Access Token Manipulation: Token Impersonation/Theft
#---------------------------------------------------------------------------------------
# invoke-atomictest T1134.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
# invoke-atomictest T1134.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한
# invoke-atomictest T1134.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1134.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1134.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1134.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1134.001 -testnumber 4  -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1134.002 - Create Process with Token
#---------------------------------------------------------------------------------------
# invoke-atomictest T1134.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1134.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1135 - Network Share Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1135 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1135 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1135 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1135 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1135 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1135 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1135 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1135 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1136.002 - Create Account: Domain Account
#---------------------------------------------------------------------------------------
invoke-atomictest T1136.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1136.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1136.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1136.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1136.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1136.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1137 - Office Application Startup
#---------------------------------------------------------------------------------------
invoke-atomictest T1137 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1137 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1140 - Deobfuscate/Decode Files or Information
#---------------------------------------------------------------------------------------
invoke-atomictest T1140 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1204.002 - User Execution: Malicious File
#---------------------------------------------------------------------------------------
invoke-atomictest T1204.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1204.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1204.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath

# invoke-atomictest T1204.002 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1218 - Signed Binary Proxy Execution
#---------------------------------------------------------------------------------------
invoke-atomictest T1218 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 4 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
invoke-atomictest T1218 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1218 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1218 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1218 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1218 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1218 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1218 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1218 -testnumber 8 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1218 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1218.011 - Signed Binary Proxy Execution: Rundll32
#---------------------------------------------------------------------------------------
invoke-atomictest T1218.011 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 2 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 5
invoke-atomictest T1218.011 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1222.001 - File and Directory Permissions Modification: Windows File and Directory Permissions Modification
#---------------------------------------------------------------------------------------
invoke-atomictest T1222.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.001 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1222.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1222.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1482 - Domain Trust Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1482 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1505.003 - Server Software Component: Web Shell
#---------------------------------------------------------------------------------------
invoke-atomictest T1505.003 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1505.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1505.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1518 - Software Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1518 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1518 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1518 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1518 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1518.001 - Software Discovery: Security Software Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1518.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1518.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1518.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1543.003 - Create or Modify System Process: Windows Service
#---------------------------------------------------------------------------------------
# invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1546.013 - Event Triggered Execution: PowerShell Profile
#---------------------------------------------------------------------------------------
invoke-atomictest T1546.013 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1546.015 - Event Triggered Execution: Component Object Model Hijacking
#---------------------------------------------------------------------------------------
invoke-atomictest T1546.015 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1546.015 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1546.015 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1546.015 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1546.015 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1546.015 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1546.015 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1546.015 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1546.015 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1547 - Boot or Logon Autostart Execution
#---------------------------------------------------------------------------------------
invoke-atomictest T1547 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1547.001 - Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder
#---------------------------------------------------------------------------------------
invoke-atomictest T1547.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1547 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # # 관리자 권한
# invoke-atomictest T1547 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 12 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 13 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 15 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1547.004 - Boot or Logon Autostart Execution: Winlogon Helper DLL
#---------------------------------------------------------------------------------------
invoke-atomictest T1547.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.004 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1547.009 - Boot or Logon Autostart Execution: Shortcut Modification
#---------------------------------------------------------------------------------------
invoke-atomictest T1547.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1547.009 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1547.009 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1548.002 - Abuse Elevation Control Mechanism: Bypass User Access Control
#---------------------------------------------------------------------------------------
invoke-atomictest t1548.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
invoke-atomictest t1548.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest t1548.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1548.002 -testnumber 20 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1550.002 - Use Alternate Authentication Material: Pass the Hash
#---------------------------------------------------------------------------------------
invoke-atomictest t1550.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1550.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 30
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1552.001 - Unsecured Credentials: Credentials In Files
#---------------------------------------------------------------------------------------
invoke-atomictest t1552.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1552.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1552.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1552.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1552.001 -testnumber 9 -cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1552.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest t1552.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest t1552.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1552.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1553.004 - Subvert Trust Controls: Install Root Certificate
#---------------------------------------------------------------------------------------
# invoke-atomictest t1553.004 -testnumber 4 -getprereq -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1553.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1553.004 -testnumber 4 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1553.004 -testnumber 5 -getprereq -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1553.004 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1553.004 -testnumber 5 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1553.004 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest t1553.004 -testnumber 6 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1555 - Credentials from Password Stores
#---------------------------------------------------------------------------------------
invoke-atomictest t1555 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1555.004 - Credentials from Password Stores: Windows Credential Manager
#---------------------------------------------------------------------------------------
invoke-atomictest t1555.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1555.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1560 - Archive Collected Data
#---------------------------------------------------------------------------------------
# invoke-atomictest T1560 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1560 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1560.001 - Archive Collected Data: Archive via Utility
#---------------------------------------------------------------------------------------
# invoke-atomictest T1560.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1560.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1560.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1562.001 - Impair Defenses: Disable or Modify Tools
#---------------------------------------------------------------------------------------
invoke-atomictest T1562.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.001 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.001 -testnumber 30 -ExecutionLogPath $ExecutionLogPath 
# invoke-atomictest T1562.001 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 22 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 23 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 24 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 25 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 26 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 27 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 28 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 29 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 31 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 32 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 33 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 34 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 35 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.001 -testnumber 36 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1562.002 - Impair Defenses: Disable Windows Event Logging
#---------------------------------------------------------------------------------------
# invoke-atomictest T1562.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #AD 
# invoke-atomictest T1562.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD
invoke-atomictest T1562.002 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

# invoke-atomictest T1562.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1562.006 - Impair Defenses: Indicator Blocking
#---------------------------------------------------------------------------------------
# invoke-atomictest T1562.006 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 7 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1562.006 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1564 - Hide Artifacts
#---------------------------------------------------------------------------------------
invoke-atomictest T1564 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1564 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1564.001 - Hide Artifacts: Hidden Files and Directories
#---------------------------------------------------------------------------------------
# invoke-atomictest T1564.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1564.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1564.004 - Hide Artifacts: NTFS File Attributes
#---------------------------------------------------------------------------------------
# invoke-atomictest T1564.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1564.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564.004 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564.004 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564.004 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1566.001 - Phishing: Spearphishing Attachment
#---------------------------------------------------------------------------------------
invoke-atomictest T1566.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1566.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1566.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1566.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1566.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1569.002 - System Services: Service Execution
#---------------------------------------------------------------------------------------
# invoke-atomictest T1569.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1569.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1569.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1569.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------



#---------------------------------------------------------------------------------------
# T1571 - Non-Standard Port
#---------------------------------------------------------------------------------------
invoke-atomictest T1571 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1573 - Encrypted Channel
#---------------------------------------------------------------------------------------
# invoke-atomictest T1573 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1574.001 - Hijack Execution Flow: DLL Search Order Hijacking
#---------------------------------------------------------------------------------------
# invoke-atomictest T1574.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1574.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1574.007 - Hijack Execution Flow: Path Interception by PATH Environment Variable
#---------------------------------------------------------------------------------------
# invoke-atomictest T1574.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1574.007A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1574.008 - Hijack Execution Flow: Path Interception by Search Order Hijacking
#---------------------------------------------------------------------------------------
invoke-atomictest T1574.008 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
invoke-atomictest T1574.008 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # powershell 새로 실행해서 cleanup 명령 수행해야 함
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1574.009 - Hijack Execution Flow: Path Interception by Unquoted Path
#---------------------------------------------------------------------------------------
# invoke-atomictest T1574.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1574.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1574.010 - Hijack Execution Flow: Services File Permissions Weakness
#---------------------------------------------------------------------------------------
# invoke-atomictest T1574.010A -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1574.010A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1574.011 - Hijack Execution Flow: Services Registry Permissions Weakness
#---------------------------------------------------------------------------------------
invoke-atomictest T1574.011 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1574.011 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1574.011 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# invoke-atomictest T1574.011 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#---------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------
# T1614 - System Location Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1614A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#---------------------------------------------------------------------------------------








