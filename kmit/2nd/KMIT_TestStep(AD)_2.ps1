$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest(AD).log"
Import-Module "c:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

##############################################################
# Execution
##############################################################

#---------------------------------------------------------------------------------------
# T1562.002 - Impair Defenses: Disable Windows Event Logging
#---------------------------------------------------------------------------------------
invoke-atomictest T1562.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1518 - Software Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1518 -testnumber 6 -ExecutionLogPath $ExecutionLogPath -Timeoutseconds 100