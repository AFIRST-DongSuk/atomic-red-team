$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest(AD).log"
Import-Module "c:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

##############################################################
# Execution
##############################################################

#---------------------------------------------------------------------------------------
# T1003.003 - OS Credential Dumping: NTDS
#---------------------------------------------------------------------------------------
invoke-atomictest T1003.003 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #AD에서 실행, 관리자 권한
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
# T1018 - Remote System Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1018 -testnumber 16 -ExecutionLogPath $ExecutionLogPath #  AD에서 실행, 관리자 권한

#---------------------------------------------------------------------------------------
# T1562.002 - Impair Defenses: Disable Windows Event Logging
#---------------------------------------------------------------------------------------
#invoke-atomictest T1562.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #AD 
#invoke-atomictest T1562.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #AD