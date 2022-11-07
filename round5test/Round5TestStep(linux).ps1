$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"=""}
$ExecutionLogPath = ""
Import-Module "" -Force

##############################################################
# Execution
##############################################################

#---------------------------------------------------------------------------------------
# T1007 
#---------------------------------------------------------------------------------------
invoke-atomictest T1007 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1014
#---------------------------------------------------------------------------------------
# invoke-atomictest T1014 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1014 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1014 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1014 -testnumber 4 -ExecutionLogPath $ExecutionLogPath\

#---------------------------------------------------------------------------------------
# T1016
#---------------------------------------------------------------------------------------
invoke-atomictest T1016 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1018
#---------------------------------------------------------------------------------------
invoke-atomictest T1018 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1018 -testnumber 14 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1027
#---------------------------------------------------------------------------------------
invoke-atomictest T1027 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1027.002
#---------------------------------------------------------------------------------------
invoke-atomictest T1027.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1027.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1030
#---------------------------------------------------------------------------------------
invoke-atomictest T1030 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1030 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1030 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1033
#---------------------------------------------------------------------------------------
invoke-atomictest T1033 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1036.005
#---------------------------------------------------------------------------------------
invoke-atomictest T1036.005 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.005 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1036.006
#---------------------------------------------------------------------------------------
invoke-atomictest T1036.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.006 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1040
#---------------------------------------------------------------------------------------
invoke-atomictest T1040 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1040 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1048
#---------------------------------------------------------------------------------------
invoke-atomictest T1048 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1048 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1049
#---------------------------------------------------------------------------------------
invoke-atomictest T1049 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1053.003
#---------------------------------------------------------------------------------------
invoke-atomictest T1053.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1053.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1056.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1056.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1056.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1056.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1056.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1056.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1057
#---------------------------------------------------------------------------------------
# invoke-atomictest T1057 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1059.004
#---------------------------------------------------------------------------------------
# invoke-atomictest T1059.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1059.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1059.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1059.004 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1059.006
#---------------------------------------------------------------------------------------
# invoke-atomictest T1059.006 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1059.006 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1059.006 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1059.006 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1069.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1069.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1070.002
#---------------------------------------------------------------------------------------
# invoke-atomictest T1070.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1070.003
#---------------------------------------------------------------------------------------
# invoke-atomictest T1070.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.003 -testnumber 9 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1070.004
#---------------------------------------------------------------------------------------
# invoke-atomictest T1070.004 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.004 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.004 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1070.004 -testnumber 8 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1071.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1071.001 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1074.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1074.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1078.003
#---------------------------------------------------------------------------------------
# invoke-atomictest T1078.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1082
#---------------------------------------------------------------------------------------
# invoke-atomictest T1082 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1082 -testnumber 24 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1083
#---------------------------------------------------------------------------------------
# invoke-atomictest T1083 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1083 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1087.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1087.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1087.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1090.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1090.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1105
#---------------------------------------------------------------------------------------
# invoke-atomictest T1105 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 14 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1105 -testnumber 27 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1132.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1132.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1135
#---------------------------------------------------------------------------------------
# invoke-atomictest T1135 -testnumber 2 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1140
#---------------------------------------------------------------------------------------
# invoke-atomictest T1140 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1140 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1140 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1140 -testnumber 6 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1222.002
#---------------------------------------------------------------------------------------
# invoke-atomictest T1222.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 11 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
# invoke-atomictest T1222.002 -testnumber 11 -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1518.001
#---------------------------------------------------------------------------------------
# invoke-atomictest T1518.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath













