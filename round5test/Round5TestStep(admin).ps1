# 이 스크립트는 Round4TestStep.ps1 실행 전에 관리자 권한으로 먼저 수행해야 함
 
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest(admin).log"
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) # 관리자 권한 확인


Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force


#------------------------------------------------------------
# credential-access	- OS Credential Dumping(T1003)

invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #로그아웃 후 파일 생성
invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# credential-access - OS Credential Dumping(T1003) T1003.001 - LSASS Memory

invoke-atomictest T1003.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트 #manual테스트
invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPathinvoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요
invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨.
invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# credential-access - OS Credential Dumping(T1003) T1003.003 - NTDS

#invoke-atomictest T1003.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1003.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #Volume shadow copy must exist 에러 메시지 발생 (ExecutionLogPath)실행에는 문제 없음
#invoke-atomictest T1003.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 4 -Cleanup  -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 5 -Cleanup  -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 6 -Cleanup  -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 7 -Cleanup  -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #AD에서 실행
#invoke-atomictest T1003.003 -testnumber 8 -Cleanup  -ExecutionLogPath $ExecutionLogPath #AD에서 실행

#------------------------------------------------------------
# discovery - System Service Discovery(T1007)

#invoke-atomictest T1007 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1007 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1007 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1007 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# discovery - Application Window Discovery(T1010)

#invoke-atomictest T1010 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1010 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# discovery - Query Registry(T1012)

#invoke-atomictest T1012 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1012 -testnumber 1 -Cleanup  -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# discovery - System Network Configuration Discovery(T1016)

#invoke-atomictest T1016 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 5 -Cleanup  -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016 -testnumber 7 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# discovery - System Network Configuration Discovery(T1016) T1016.001 - Internet Connection Discovery

#invoke-atomictest T1016.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1016.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #tracert 명령어를 이용 외부 네트워크 통신 테스트 → 방화벽 문제 발생
#invoke-atomictest T1016.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# discovery - Remote System Discovery(T1018)

#invoke-atomictest T1018 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 19 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# exfiltration - Automated Exfiltration(T1020)
#invoke-atomictest T1020 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1020 -testnumber 1 -Cleanup  -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# lateral-movement - Remote Services(T1021) T1021.001 - SMB/Windows Admin Shares

#invoke-atomictest T1021.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# lateral-movement - Remote Services(T1021) T1021.004 - SSH

#invoke-atomictest T1021.004 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# lateral-movement - Remote Services(T1021) T1021.004 - SSH

#invoke-atomictest T1021.004 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# lateral-movement - Remote Services(T1021) T1021.006 - Windows Remote Management

invoke-atomictest T1021.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.006 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# defense-evasion - Obfuscated Files or Information(T1027)

#invoke-atomictest T1027 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1027 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1027 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1027 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1027 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1027 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1027 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1027 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #메일 전송 문제
#invoke-atomictest T1027 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #HTTP 방식으로 민감 데이터 전송 (서버 구축 필요)
#invoke-atomictest T1027 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #MANUAL?
#invoke-atomictest T1027 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #MANUAL?

#------------------------------------------------------------
# defense-evasion - Obfuscated Files or Information(T1027) T1027.002 - Software Packing

#invoke-atomictest T1027.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1027.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1027.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1027.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#------------------------------------------------------------
# defense-evasion - Obfuscated Files or Information(T1027) T1027.003 - Steganography

#N/A

#------------------------------------------------------------
# defense-evasion - Obfuscated Files or Information(T1027) T1027.005 - Indicator Removal from Tools

#N/A

#------------------------------------------------------------
# exfiltration - Scheduled Transfer(T1029)

#N/A

#------------------------------------------------------------
# exfiltration - Data Transfer Size Limits(T1030)

#invoke-atomictest T1030 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#------------------------------------------------------------
# discovery - System Owner/User Discovery(T1033)

#invoke-atomictest T1033 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1033 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1033 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1033 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1033 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1033 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1033 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# defense-evasion - Masquerading(T1036)

#invoke-atomictest T1036 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1036 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1036 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1036 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1036 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# defense-evasion - Masquerading(T1036) T1036.004 - Masquerade Task or Service

invoke-atomictest T1036.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1036.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPathinvoke

#------------------------------------------------------------
# defense-evasion - Masquerading(T1036) T1036.005 - Match Legitimate Name or Location

#invoke-atomictest T1036.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1036.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1036.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# defense-evasion - Masquerading(T1036) T1036.006 - Space after Filename

#invoke-atomictest T1036.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1036.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#------------------------------------------------------------
# persistence - Boot or Logon Initialization Scripts(T1037)

#invoke-atomictest T1037.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1037.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath




