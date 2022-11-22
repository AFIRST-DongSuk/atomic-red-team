$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="/round5test/atomics"}
$ExecutionLogPath = "/round5test/atomictest_linux.log"
Import-Module "/round5test/invoke-atomicredteam/Invoke-AtomicRedTeam.psd1" -Force

##############################################################
# Execution
##############################################################

#---------------------------------------------------------------------------------------
# T1007 - System Service Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1007 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1014 - Rootkit #test
#---------------------------------------------------------------------------------------
invoke-atomictest T1014 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1014 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1016 - System Network Configuration Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1016 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1018 - Remote System Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1018 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 14 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1027 - Obfuscated Files or Information
#---------------------------------------------------------------------------------------
invoke-atomictest T1027 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1027.002 - Obfuscated Files or Information: Software Packing
#---------------------------------------------------------------------------------------
invoke-atomictest T1027.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1030 - Data Transfer Size Limits
#---------------------------------------------------------------------------------------
invoke-atomictest T1030 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1030 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1030 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1033 - System Owner/User Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1033 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1036.005 - Masquerading: Match Legitimate Name or Location
#---------------------------------------------------------------------------------------
invoke-atomictest T1036.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1036.006 - Masquerading: Space after Filename
#---------------------------------------------------------------------------------------
invoke-atomictest T1036.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.006 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1040 - Network Sniffing
#---------------------------------------------------------------------------------------
invoke-atomictest T1040 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1040 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1048 - Exfiltration Over Alternative Protocol
#---------------------------------------------------------------------------------------
invoke-atomictest T1048 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1048 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1049 - System Network Connections Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1049 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1053.003 - Scheduled Task/Job: Cron
#---------------------------------------------------------------------------------------
invoke-atomictest T1053.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1056.001 - Input Capture: Keylogging
#---------------------------------------------------------------------------------------
invoke-atomictest T1056.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

invoke-atomictest T1056.001 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1056.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1056.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1056.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1056.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1056.001 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1056.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1056.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1057 - Process Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1057 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1057 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1059.004 - Command and Scripting Interpreter: Bash
#---------------------------------------------------------------------------------------
invoke-atomictest T1059.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.004 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1059.006 - Command and Scripting Interpreter: Python
#---------------------------------------------------------------------------------------
invoke-atomictest T1059.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.006 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.006 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1059.006 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1059.006 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1069.001 - Permission Groups Discovery: Local Groups
#---------------------------------------------------------------------------------------
invoke-atomictest T1069.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1070.002 - Indicator Removal on Host: Clear Linux or Mac System Logs
#---------------------------------------------------------------------------------------
invoke-atomictest T1070.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1070.003 - Indicator Removal on Host: Clear Command History
#---------------------------------------------------------------------------------------
invoke-atomictest T1070.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 9 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.003 -testnumber 9 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1070.004 - Indicator Removal on Host: File Deletion
#---------------------------------------------------------------------------------------
invoke-atomictest T1070.004 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1070.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.004 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1071.001 - Application Layer Protocol: Web Protocols
#---------------------------------------------------------------------------------------
invoke-atomictest T1071.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1074.001 - Data Staged: Local Data Staging
#---------------------------------------------------------------------------------------
invoke-atomictest T1074.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1074.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1082 - System Information Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1082 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1082 -testnumber 24 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1083 - File and Directory Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1083 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1083 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1087.001 - Account Discovery: Local Account
#---------------------------------------------------------------------------------------
invoke-atomictest T1087.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1087.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1090.001 - Proxy: Internal Proxy
#---------------------------------------------------------------------------------------
invoke-atomictest T1090.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1105 - Ingress Tool Transfer
#---------------------------------------------------------------------------------------
invoke-atomictest T1105 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1105 -testnumber 27 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1132.001 - Data Encoding: Standard Encoding
#---------------------------------------------------------------------------------------
invoke-atomictest T1132.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1135 - Network Share Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1135 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1140 - Deobfuscate/Decode Files or Information
#---------------------------------------------------------------------------------------
invoke-atomictest T1140 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1140 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1222.002 - File and Directory Permissions Modification: Linux and Mac File and Directory Permissions Modification
#---------------------------------------------------------------------------------------
invoke-atomictest T1222.002 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 7 - Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 9 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1222.002 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1518.001 - Software Discovery: Security Software Discovery
#---------------------------------------------------------------------------------------
invoke-atomictest T1518.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1553.004 - Subvert Trust Controls: Install Root Certificate
#---------------------------------------------------------------------------------------
invoke-atomictest t1553.004 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest t1553.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1560.002 - Archive Collected Data: Archive via Library
#---------------------------------------------------------------------------------------
invoke-atomictest T1560.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1562.001 - Impair Defenses: Disable or Modify Tools
#---------------------------------------------------------------------------------------
invoke-atomictest T1562.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1562.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1562.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath


#---------------------------------------------------------------------------------------
# T1562.006 - Impair Defenses: Indicator Blocking
#---------------------------------------------------------------------------------------
invoke-atomictest T1562.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.006 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1562.006 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1564.001 - Hide Artifacts: Hidden Files and Directories
#---------------------------------------------------------------------------------------
invoke-atomictest T1564.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1564.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
