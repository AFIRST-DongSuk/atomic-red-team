$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest.log"
Import-Module "c:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

Start-Transcript "C:\R5\atomic-red-team\Round5TestStep_2_ps1.log"

#---------------------------------------------------------------------------------------
# T1001.002 Data Obfuscation: Steganography
#---------------------------------------------------------------------------------------
# N/A

#---------------------------------------------------------------------------------------
# T1018 - Remote System Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1018 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 18 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 19 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1021.002 - Remote Services: SMB/Windows Admin Shares
#---------------------------------------------------------------------------------------
invoke-atomictest T1021.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1021.004A - Remote Services: SSH
#---------------------------------------------------------------------------------------
invoke-atomictest T1021.004A -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1027 - Obfuscated Files or Information
#---------------------------------------------------------------------------------------
invoke-atomictest T1027 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 6 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1048 - Exfiltration Over Alternative Protocol
#---------------------------------------------------------------------------------------
# invoke-atomictest T1048 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 미해결 이슈

#---------------------------------------------------------------------------------------
# T1059.007A - Command and Scripting Interpreter: JavaScript
#---------------------------------------------------------------------------------------
invoke-atomictest T1059.007A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.007A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.007A -testnumber 2 -ExecutionLogPath $ExecutionLogPath -timeoutseconds 3
invoke-atomictest T1059.007A -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1070.003 - Indicator Removal on Host: Clear Command History
#---------------------------------------------------------------------------------------
invoke-atomictest T1070.003 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1071.001 - Application Layer Protocol: Web Protocols
#---------------------------------------------------------------------------------------
invoke-atomictest T1071.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1082 - System Information Discovery
#---------------------------------------------------------------------------------------
# invoke-atomictest T1082 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 20 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1083 - File and Directory Discovery 
#---------------------------------------------------------------------------------------
invoke-atomictest T1083 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1087.002 - Account Discovery: Domain Account
#---------------------------------------------------------------------------------------
invoke-atomictest T1087.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.002 -testnumber 15 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1087.003A - Account Discovery: Email Account
#---------------------------------------------------------------------------------------
invoke-atomictest T1087.003A -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.003A -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1095 - Non-Application Layer Protocol
#---------------------------------------------------------------------------------------
invoke-atomictest T1095 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
invoke-atomictest T1095 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1095 -testnumber 2 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10
invoke-atomictest T1095 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1095 -testnumber 3 -ExecutionLogPath $ExecutionLogPath -TimeoutSeconds 10

#---------------------------------------------------------------------------------------
# T1105 - Ingress Tool Transfer
#---------------------------------------------------------------------------------------
# invoke-atomictest T1105 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 20 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 20 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 20 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 17 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 21 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 21 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 21 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 24 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 26 -Getprereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 26 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 26 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 28 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 28 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 28 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 29 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 29 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1110.003 - Brute Force: Password Spraying
#---------------------------------------------------------------------------------------
invoke-atomictest T1110.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1110.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1110.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1110.003 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1110.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1132.001 - Data Encoding: Standard Encoding
#---------------------------------------------------------------------------------------
invoke-atomictest T1132.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1204.002 - User Execution: Malicious File
#---------------------------------------------------------------------------------------
invoke-atomictest T1204.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath


#---------------------------------------------------------------------------------------
# T1218 - Signed Binary Proxy Execution
#---------------------------------------------------------------------------------------
invoke-atomictest T1218 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218 -testnumber 10 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1218.011 - Signed Binary Proxy Execution: Rundll32
#---------------------------------------------------------------------------------------
invoke-atomictest T1218.011 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1218.011 -testnumber 7 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1482 - Domain Trust Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1482 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1482 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1518 - Software Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1518 -testnumber 6 -ExecutionLogPath $ExecutionLogPath -Timeoutseconds 100

#---------------------------------------------------------------------------------------
# T1548.002 - Abuse Elevation Control Mechanism: sBypass User Access Control
#---------------------------------------------------------------------------------------
invoke-atomictest t1548.002 -testnumber 19 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1555 - Credentials from Password Stores
#---------------------------------------------------------------------------------------
invoke-atomictest t1555 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1560 - Archive Collected Data
#---------------------------------------------------------------------------------------
invoke-atomictest T1560 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1569.002 - System Services: Service Execution
#---------------------------------------------------------------------------------------
invoke-atomictest T1569.002 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1569.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1573 - Encrypted Channel
#---------------------------------------------------------------------------------------
invoke-atomictest T1573 -testnumber 1 -ExecutionLogPath $ExecutionLogPath -timeoutseconds 10


Stop-Transcript