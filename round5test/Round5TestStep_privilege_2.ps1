$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest.log"
Import-Module "c:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

Start-Transcript "c:\round5test\Round5TestStep_privilege_2_ps1.log"

#---------------------------------------------------------------------------------------
# T1055
#---------------------------------------------------------------------------------------
invoke-atomictest T1055 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1055 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1069.002
#---------------------------------------------------------------------------------------
invoke-atomictest T1069.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1518.001
#---------------------------------------------------------------------------------------
invoke-atomictest T1518.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1564.004
#---------------------------------------------------------------------------------------
# invoke-atomictest T1564.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath # 관리자 권한


Stop-Transcript