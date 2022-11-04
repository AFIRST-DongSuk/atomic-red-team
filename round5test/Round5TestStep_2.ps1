$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest.log"
Import-Module "c:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

Start-Transcript "c:\round5test\Round5TestStep_2_ps1.log"

#---------------------------------------------------------------------------------------
# T1001.002 Data Obfuscation: Steganography
#---------------------------------------------------------------------------------------
# N/A
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------
# T1095 - Non-Application Layer Protocol
#---------------------------------------------------------------------------------------
invoke-atomictest T1095 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
invoke-atomictest T1095 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1095 -testnumber 2 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
invoke-atomictest T1095 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1095 -testnumber 3 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
#---------------------------------------------------------------------------------------