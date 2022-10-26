
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round4test\atomics"}
$ExecutionLogPath = "C:\round4test\atomictest.log"
Import-Module "C:\round4test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

#---------------------------------------------------------------------------------------
# T1001.002 Data Obfuscation: Steganography
# N/A
#---------------------------------------------------------------------------------------