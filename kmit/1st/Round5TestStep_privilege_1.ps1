# 이 스크립트는 Round5TestStep.ps1 실행 전에 관리자 권한으로 먼저 수행해야 함
 
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest(admin).log"
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) # 관리자 권한 확인


Import-Module "c:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force
Start-Transcript "c:\round5test\Round5TestStep(admin)_ps1.log"


#------------------------------------------------------------
# credential-access	- OS Credential Dumping(T1003)
write-host "T1003 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
timeout /t $sleeptime

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
timeout /t $sleeptime
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #Manual
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #로그아웃 후 파일 생성 #Manual
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #Manual

#---------------------------------------------------------------------------------------
# T1134.001 - Access Token Manipulation: Token Impersonation/Theft
#---------------------------------------------------------------------------------------
write-host "T1134.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한


$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한


$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#------------------------------------------------------------
# credential-access - OS Credential Dumping(T1003) T1003.001 - LSASS Memory
write-host "T1003.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
# invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트 #manual테스트
invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨.

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
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
write-host "T1018 Process Start";
#invoke-atomictest T1018 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1018 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
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
write-host "T1021.002 Process Start";
#invoke-atomictest T1021.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1021.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.002 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
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
write-host "T1021.006 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1021.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#invoke-atomictest T1021.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

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
write-host "T1036.004 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1036.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1036.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1036.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
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

 #------------------------------------------------------------
 # credential-access - Network Sniffing(T1040)
write-host "T1040 Process Start";
#invoke-atomictest T1040 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1040 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1040 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1040 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1040 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1040 -testnumber 5 -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1040 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1040 -testnumber 6 -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1040 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath 


 #------------------------------------------------------------
 # exfiltration - Exfiltration Over C2 Channel(T1041)

 #invoke-atomictest T1041 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

 #------------------------------------------------------------
 # exfiltration - Windows Management Instrumentation(T1047)
 write-host "T1047 Process Start";
#invoke-atomictest T1047 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#invoke-atomictest T1047 -testnumber 9 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1047 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 10 -Getprereqs -ExecutionLogPath $ExecutionLogPath
 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 10 -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1047 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath 


#------------------------------------------------------------
# exfiltration - Exfiltration Over Alternative Protocol(T1048)

#invoke-atomictest T1048 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1048 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1048 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1048 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#------------------------------------------------------------
# discovery - System Network Connections Discovery(T1049)
write-host "T1049 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1049 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자 권한

#invoke-atomictest T1049 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1049 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") # 일단 주석
invoke-atomictest T1049 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1049 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1049 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#------------------------------------------------------------
# discovery - Scheduled Task/Job(T1053) T1053.003 - Cron

#invoke-atomictest T1053.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1053.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1053.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#------------------------------------------------------------
# discovery - Scheduled Task/Job(T1053) T1053.005 - Scheduled Task
write-host "T1053.005 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1053.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1053.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1053.005 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1053.005 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1053.005 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1053.005 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1053.005 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#------------------------------------------------------------
# defense-evasion - Process Injection(T1055)
write-host "T1055 Process Start";
#invoke-atomictest T1055 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1055 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") 
invoke-atomictest T1055 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055 -testnumber 2 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한


#------------------------------------------------------------
# defense-evasion - Process Injection(T1055) T1055.001 - Dynamic-link Library Injection
write-host "T1055.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055.001 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1055.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#------------------------------------------------------------
# collection - Input Capture(T1056) T1056.001 - Keylogging

#invoke-atomictest T1056.001 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 수동 테스트
#invoke-atomictest T1056.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 수동 테스트
#invoke-atomictest T1056.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #수동 테스트
#invoke-atomictest T1056.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

###### 윗부분 확인 필요 ######

#---------------------------------------------------------------------------------------
# T1018 - Remote System Discovery
#---------------------------------------------------------------------------------------
write-host "T1057 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1057 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1057 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1059.001 - Command and Scripting Interpreter: PowerShell
#---------------------------------------------------------------------------------------
write-host "T1059.001 Process Start";
#invoke-atomictest T1059.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 12 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 12 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 13 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 15 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 16 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 17 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 18 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1059.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1059.001 -testnumber 14 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1059.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1059.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 수동 실행
#invoke-atomictest T1059.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1059.003 - Command and Scripting Interpreter: Windows Command Shell
#---------------------------------------------------------------------------------------
#invoke-atomictest T1059.003 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1059.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1056.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1056.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1059.004 - Command and Scripting Interpreter: Bash
#---------------------------------------------------------------------------------------
#invoke-atomictest T1059.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1059.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1059.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1059.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1059.006 - Command and Scripting Interpreter: Python
#---------------------------------------------------------------------------------------
#invoke-atomictest T1059.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1059.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1059.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1059.006 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1069.001 - Permission Groups Discovery: Local Groups
#---------------------------------------------------------------------------------------
#invoke-atomictest T1069.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.001 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1069.002 - Permission Groups Discovery: Domain Groups
#---------------------------------------------------------------------------------------
write-host "T1069.002 Process Start";
#invoke-atomictest T1069.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1069.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 12 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1069.002 -testnumber 13 -ExecutionLogPath $ExecutionLogPath 
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1069.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1069.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1070 - Indicator Removal on Host
#---------------------------------------------------------------------------------------
write-host "T1070 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1070.001 - Indicator Removal on Host: Clear Windows Event Logs
#---------------------------------------------------------------------------------------
write-host "T1070.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1070.002 - Indicator Removal on Host: Clear Linux or Mac System Logs
#---------------------------------------------------------------------------------------
#invoke-atomictest T1070.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1070.003 - Indicator Removal on Host: Clear Command History
#---------------------------------------------------------------------------------------
#invoke-atomictest T1070.003 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.003 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.003 -testnumber 11 -ExecutionLogPath $ExecutionLogPath 
#invoke-atomictest T1070.003 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.003 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.003 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1070.004 - Indicator Removal on Host: File Deletion
#---------------------------------------------------------------------------------------
write-host "T1070.004 Process Start";
#invoke-atomictest T1070.004 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1070.004 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1070.004 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1070.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1070.004 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1071.001 - Application Layer Protocol: Web Protocols
#---------------------------------------------------------------------------------------
#invoke-atomictest T1071.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1071.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1071.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1071.001 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1074.001 - Application Layer Protocol: Web Protocols
#---------------------------------------------------------------------------------------
#invoke-atomictest T1074.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1074.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1074.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1074.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1074.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1078.001 - Valid Accounts: Default Accounts
#---------------------------------------------------------------------------------------
write-host "T1078.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1078.003 - Valid Accounts: Local Accounts
#---------------------------------------------------------------------------------------
write-host "T1078.003 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1078.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

# invoke-atomictest T1078.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1082 - System Information Discovery
#---------------------------------------------------------------------------------------
write-host "T1082 Process Start";
#invoke-atomictest T1082 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1082 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1082 -testnumber 21 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1082 -testnumber 22 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1082 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1082 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1082 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1082 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1082 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1082 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1082 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1082 -testnumber 24 -ExecutionLogPath $ExecutionLogPath  #Linux/macOS

#---------------------------------------------------------------------------------------
# T1083 - File and Directory Discovery
#---------------------------------------------------------------------------------------
#invoke-atomictest T1083 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1083 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1083 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1083 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1083 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1083 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1083 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1083 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1083 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1087.001 - Account Discovery: Local Account
#---------------------------------------------------------------------------------------
#invoke-atomictest T1087.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1087.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1087.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1087.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1087.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1087.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1087.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1087.002 - Account Discovery: Domain Account
#---------------------------------------------------------------------------------------
#invoke-atomictest T1087.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 10 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 16 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1087.002 -testnumber 16 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1090.001 - Proxy: Internal Proxy
#---------------------------------------------------------------------------------------
write-host "T1090.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1090.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1090.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1090.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1090.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1095 - Non-Application Layer Protocol
#---------------------------------------------------------------------------------------
#invoke-atomictest T1095 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1095 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1095 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1105 - Ingress Tool Transfer
#---------------------------------------------------------------------------------------
write-host "T1105 Process Start";
#invoke-atomictest T1105 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 14 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 27 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1105 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 18 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 19 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 21 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 21 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 21 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 22 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 23 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 24 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 25 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 25 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 26 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 26 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 28 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 28 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 28 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 29 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1105 -testnumber 29 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 12 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1105 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1106 - Native API
#---------------------------------------------------------------------------------------
write-host "T1106 Process Start";
#invoke-atomictest T1106 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1106 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1106 -testnumber 2 -ExecutionLogpath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1106 -testnumber 3 -ExecutionLogpath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1106 -testnumber 4 -ExecutionLogpath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1110.003 - Brute Force: Password Spraying
#---------------------------------------------------------------------------------------
#invoke-atomictest T1110.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1110.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1110.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1110.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1110.003 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1110.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1110.003 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1110.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1112 - Brute Force: Password Spraying
#---------------------------------------------------------------------------------------
write-host "T1112 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1112 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1112 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1112 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1112 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 7 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 12 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 13 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 15 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 16 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 17 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 18 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 19 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 19 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 20 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 20 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 21 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 21 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 22 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 23 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 24 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 25 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 25 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 26 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 26 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 27 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 27 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 28 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 28 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 29 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 29 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 30 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 30 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 31 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 31 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 32 -ExecutionLogPath -Cleanup $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 33 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 33 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 34 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 34 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 35 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 35 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 36 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 36 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 37 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 37 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 38 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 38 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 39 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 39 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 40 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 40 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

# invoke-atomictest T1112 -testnumber 41 -ExecutionLogPath $ExecutionLogPath # 관리자 권한 # manual
# invoke-atomictest T1112 -testnumber 41 -Cleanup -ExecutionLogPath $ExecutionLogPath  # 관리자 권한 # manual
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 42 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 42 -Cleanup -ExecutionLogPath $ExecutionLogPath  # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 43 -ExecutionLogPath $ExecutionLogPath  # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1112 -testnumber 43 -Cleanup -ExecutionLogPath $ExecutionLogPath  # 관리자 권한


#---------------------------------------------------------------------------------------
# T1119 - Automated Collection
#---------------------------------------------------------------------------------------
#invoke-atomictest T1119 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1119 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1119 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1119 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1119 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1119 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1119 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1119 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1124 - System Time Discovery
#---------------------------------------------------------------------------------------
#invoke-atomictest T1124 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1124 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1124 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1124 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1132.001 - Data Encoding: Standard Encoding
#---------------------------------------------------------------------------------------
#invoke-atomictest T1132.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1132.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath


#---------------------------------------------------------------------------------------
# T1134.002 - Create Process with Token
#---------------------------------------------------------------------------------------
write-host "T1134.002 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1134.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한



#---------------------------------------------------------------------------------------
# T1135 - Network Share Discovery
#---------------------------------------------------------------------------------------
#invoke-atomictest T1135 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1135 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1135 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1135 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1135 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1135 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1135 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1135 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1135 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1135 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1136.002 - Create Account: Domain Account
#---------------------------------------------------------------------------------------
#invoke-atomictest T1136.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1136.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1136.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1136.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1136.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1136.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1137 - Office Application Startup
#---------------------------------------------------------------------------------------
#invoke-atomictest T1137 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1137 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1140 - Deobfuscate/Decode Files or Information
#---------------------------------------------------------------------------------------
#invoke-atomictest T1140 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1140 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1140 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1140 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1140 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1140 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1140 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1140 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1204.002 - User Execution: Malicious File
#---------------------------------------------------------------------------------------
#invoke-atomictest T1204.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1204.002 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1218 - Signed Binary Proxy Execution
#---------------------------------------------------------------------------------------
write-host "T1218 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218 -testnumber 8 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1218 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1218 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath\
#invoke-atomictest T1218 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1218.011 - Signed Binary Proxy Execution: Rundll32
#---------------------------------------------------------------------------------------
#invoke-atomictest T1218.011 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1218.011 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1222.001 - File and Directory Permissions Modification: Windows File and Directory Permissions Modification
#---------------------------------------------------------------------------------------
write-host "T1222.001 Process Start";
#invoke-atomictest T1222.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1222.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1222.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1222.002 - File and Directory Permissions Modification: Linux and Mac File and Directory Permissions Modification
#---------------------------------------------------------------------------------------
#invoke-atomictest T1222.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1222.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1482 - Domain Trust Discovery
#---------------------------------------------------------------------------------------
#invoke-atomictest T1482 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1482 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1505.002 - Server Software Component: Transport Agent
#---------------------------------------------------------------------------------------
#invoke-atomictest T1505.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #Exchange Shell
#invoke-atomictest T1505.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Exchange Shell
#invoke-atomictest T1505.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #Exchange Shell

#---------------------------------------------------------------------------------------
# T1505.003 - Server Software Component: Web Shell
#---------------------------------------------------------------------------------------
#invoke-atomictest T1505.003 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1505.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1505.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1518 - Software Discovery
#---------------------------------------------------------------------------------------
#invoke-atomictest T1518 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS


#---------------------------------------------------------------------------------------
# T1518.001 - Software Discovery: Security Software Discovery
#---------------------------------------------------------------------------------------
#invoke-atomictest T1518.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1518.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest T1518.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux/macOS

#---------------------------------------------------------------------------------------
# T1543.003 - Create or Modify System Process: Windows Service
#---------------------------------------------------------------------------------------
write-host "T1543.003 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1543.003 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1546.003 - Create or Modify System Process: Windows Service
#---------------------------------------------------------------------------------------
write-host "T1546.003 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1546.013 - Event Triggered Execution: PowerShell Profile
#---------------------------------------------------------------------------------------
#invoke-atomictest T1546.013 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1546.015 - Event Triggered Execution: Component Object Model Hijacking
#---------------------------------------------------------------------------------------
write-host "T1546.015 Process Start";
#invoke-atomictest T1546.015 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1546.015 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1546.015 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1546.015 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1546.015 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1546.015 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1546.015 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.015 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1546.015 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1547 - Boot or Logon Autostart Execution
#---------------------------------------------------------------------------------------
#invoke-atomictest T1547 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1547.001 - Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder
#---------------------------------------------------------------------------------------
write-host "T1547.001 Process Start";
#invoke-atomictest T1547.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1547.004 - Boot or Logon Autostart Execution: Winlogon Helper DLL
#---------------------------------------------------------------------------------------
#invoke-atomictest T1547.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.004 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1547.009 - Boot or Logon Autostart Execution: Shortcut Modification
#---------------------------------------------------------------------------------------
write-host "T1547.009 Process Start";
#invoke-atomictest T1547.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1547.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1547.009 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1548.002 - Abuse Elevation Control Mechanism: Bypass User Access Control
#---------------------------------------------------------------------------------------
write-host "T1548.002 Process Start";
#invoke-atomictest t1548.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 1
#invoke-atomictest t1548.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함
#invoke-atomictest t1548.002 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 19 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 21 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1548.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 계정

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1548.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 계정

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1548.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 계정

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1548.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 계정

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1548.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 계정

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1548.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 계정

#invoke-atomictest t1548.002 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함
#invoke-atomictest t1548.002 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함
#invoke-atomictest t1548.002 -testnumber 13 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함
#invoke-atomictest t1548.002 -testnumber 14 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함
#invoke-atomictest t1548.002 -testnumber 15 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함
#invoke-atomictest t1548.002 -testnumber 16 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함
#invoke-atomictest t1548.002 -testnumber 17 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1548.002 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath #cleanup은 관리자 권한으로 실행해야함

#---------------------------------------------------------------------------------------
# T1550.002 - Use Alternate Authentication Material: Pass the Hash
#---------------------------------------------------------------------------------------
#invoke-atomictest t1550.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1550.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 30
#invoke-atomictest t1550.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1550.002 -testnumber 2  -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1550.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1552.001 - Unsecured Credentials: Credentials In Files
#---------------------------------------------------------------------------------------
write-host "T1552.001 Process Start";
#invoke-atomictest t1552.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest t1552.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1552.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1552.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest t1552.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux/macOS
#invoke-atomictest t1552.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1552.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1552.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1552.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1552.001 -testnumber 9 -cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1552.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1552.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1553.004 - Subvert Trust Controls: Install Root Certificate
#---------------------------------------------------------------------------------------
write-host "T1553.004 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 4 -getprereq -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 4 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 5 -getprereq -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 5 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest t1553.004 -testnumber 6 -cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1553.006A
#---------------------------------------------------------------------------------------
write-host "T553.006A Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1553.006A -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1553.006A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1555 - Credentials from Password Stores
#---------------------------------------------------------------------------------------
#invoke-atomictest t1555 -testnumber 1 -getprereq -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 1 -cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1555.004 - Credentials from Password Stores: Windows Credential Manager
#---------------------------------------------------------------------------------------
#invoke-atomictest t1555.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest t1555.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1560 - Archive Collected Data
#---------------------------------------------------------------------------------------
#invoke-atomictest T1560 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1560 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1560.001 - Archive Collected Data: Archive via Utility
#---------------------------------------------------------------------------------------
write-host "T1560.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1560.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1560.002 - Archive Collected Data: Archive via Library
#---------------------------------------------------------------------------------------
#Linux Test

#---------------------------------------------------------------------------------------
# T1562.001 - Impair Defenses: Disable or Modify Tools
#---------------------------------------------------------------------------------------
write-host "T1562.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1562.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1562.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

# $dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
# invoke-atomictest T1562.001 -testnumber 17 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# 
# $dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
# invoke-atomictest T1562.001 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
# 
#invoke-atomictest T1562.001 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1562.001 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 21 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1562.001 -testnumber 25 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#invoke-atomictest T1562.001 -testnumber 25 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#invoke-atomictest T1562.001 -testnumber 25 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 27 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 27 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 27 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 28 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 28 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 28 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 29 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 29 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 30 -ExecutionLogPath $ExecutionLogPath 
#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
#invoke-atomictest T1562.001 -testnumber 31 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 32 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 32 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 33 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 33 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 34 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 34 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 35 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.001 -testnumber 35 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1562.002 - Impair Defenses: Disable Windows Event Logging
#---------------------------------------------------------------------------------------
write-host "T1562.002 Process Start";
#invoke-atomictest T1562.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1562.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1562.002 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1562.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1562.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1562.006 - Impair Defenses: Indicator Blocking
#---------------------------------------------------------------------------------------
write-host "T1562.006 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 7 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1562.006 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1564 - Hide Artifacts
#---------------------------------------------------------------------------------------
write-host "T1564 Process Start";
#invoke-atomictest T1564 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1564.001 - Hide Artifacts: Hidden Files and Directories
#---------------------------------------------------------------------------------------
write-host "T1564.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1564.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1564.004 - Hide Artifacts: NTFS File Attributes
#---------------------------------------------------------------------------------------
#invoke-atomictest T1564.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564.004 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564.004 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1564.004 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1566.001 - Phishing: Spearphishing Attachment
#---------------------------------------------------------------------------------------
#invoke-atomictest T1566.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1566.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1566.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1566.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1566.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1569.002 - System Services: Service Execution
#---------------------------------------------------------------------------------------
write-host "T1569.002 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#invoke-atomictest T1569.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1569.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1569.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1571 - Non-Standard Port
#---------------------------------------------------------------------------------------
#invoke-atomictest T1571 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1573 - Encrypted Channel
#---------------------------------------------------------------------------------------
#invoke-atomictest T1573 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1574.001 - Hijack Execution Flow: DLL Search Order Hijacking
#---------------------------------------------------------------------------------------
write-host "T1574.001 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1574.007A
#---------------------------------------------------------------------------------------
write-host "T1574.007A Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.007A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1574.008 - Hijack Execution Flow: Path Interception by Search Order Hijacking
#---------------------------------------------------------------------------------------
#invoke-atomictest T1574.008 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
#invoke-atomictest T1574.008 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1574.009 - Hijack Execution Flow: Path Interception by Unquoted Path
#---------------------------------------------------------------------------------------
write-host "T1774.009 Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.009 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.009 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1574.010A 
#---------------------------------------------------------------------------------------
write-host "T1574.010A Process Start";
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.010A -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.010A -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.010A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1574.011 - Hijack Execution Flow: Services Registry Permissions Weakness
#---------------------------------------------------------------------------------------
write-host "T1574.011 Process Start";
#invoke-atomictest T1574.011 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.011 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.011 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss")
invoke-atomictest T1574.011 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한


#---------------------------------------------------------------------------------------
# T1614A 
#---------------------------------------------------------------------------------------
#invoke-atomictest T1614A -testnumber 1 -ExecutionLogPath $ExecutionLogPath

Stop-Transcript