$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest.log"
Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

##############################################################
# Execution
##############################################################

#---------------------------------------------------------------------------------------
# T1003 - OS Credential Dumping
#---------------------------------------------------------------------------------------
#invoke-atomictest T1003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#invoke-atomictest T1003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#invoke-atomictest T1003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#invoke-atomictest T1003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #테스트 후 로그아웃 해야지 파일이 생성됨.  lock 안됨. #manual 실행
#invoke-atomictest T1003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1003.001 - OS Credential Dumping: LSASS Memory
#---------------------------------------------------------------------------------------
#invoke-atomictest T1003.001 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #GUI 테스트 #manual테스트
#invoke-atomictest T1003.001 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #관리자 권한
#invoke-atomictest T1003.001 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath  #관리자권한
#invoke-atomictest T1003.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #.net5 설치 필요 #관리자권한
#invoke-atomictest T1003.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 12 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #관리자권한
#invoke-atomictest T1003.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #실행시 에러발생하나 실행은 완료됨. #관리자권한
#invoke-atomictest T1003.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #관리자권한

#---------------------------------------------------------------------------------------
# T1003.003 - OS Credential Dumping: NTDS
#---------------------------------------------------------------------------------------
invoke-atomictest T1003.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath  #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
invoke-atomictest T1003.003 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한

#---------------------------------------------------------------------------------------
# T1007 - System Service Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1007 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1007 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1007 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 일반 권한 
invoke-atomictest T1007 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 일반 권한

#---------------------------------------------------------------------------------------
# T1010 - Application Window Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1010 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1010 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 일반 권한

#---------------------------------------------------------------------------------------
# T1012 - Query Registry
#---------------------------------------------------------------------------------------
invoke-atomictest T1012 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1012 -testnumber 1 -Cleanup  -ExecutionLogPath $ExecutionLogPath # 일반 권한

#---------------------------------------------------------------------------------------
# T1016 - System Network Configuration Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1016 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 5 -Cleanup  -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016 -testnumber 7 -ExecutionLogPath $ExecutionLogPath # 일반 권한

#---------------------------------------------------------------------------------------
# T1016.001 - System Network Configuration Discovery: Internet Connection Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1016.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 일반 권한
invoke-atomictest T1016.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 일반 권한

#---------------------------------------------------------------------------------------
# T1018 - Remote System Discovery
#---------------------------------------------------------------------------------------
#invoke-atomictest T1018 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 11 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 15 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 17 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 18 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 19 -ExecutionLogPath $ExecutionLogPath # 일반 권한
#invoke-atomictest T1018 -testnumber 9 -GetPrereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
#invoke-atomictest T1018 -testnumber 9 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1018 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #  AD에서 실행, 관리자 권한

#---------------------------------------------------------------------------------------
# T1018 - Remote System Discovery
#---------------------------------------------------------------------------------------