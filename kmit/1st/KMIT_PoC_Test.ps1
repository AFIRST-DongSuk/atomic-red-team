# 이 스크립트는 Round5TestStep.ps1 실행 전에 관리자 권한으로 먼저 수행해야 함

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) # 관리자 권한 확인
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\kmit\atomics"}
$ExecutionLogPath = "c:\kmit\atomictest.log"
Import-Module "c:\kmit\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

Start-Transcript "c:\kmit\KMIT_PoC_Test_ps1.log"

#---------------------------------------------------------------------------------------
# T1566.001 - Phishing: Spearphishing Attachment
#---------------------------------------------------------------------------------------
write-host "T1566.001 - Phishing: Spearphishing Attachment"
write-host "T1566.001 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Download Macro-Enabled Phishing Attachment"
invoke-atomictest T1566.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1566.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Word spawned a command shell and used an IP address in the command line"
invoke-atomictest T1566.001 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1566.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1566.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1204.002 - User Execution: Malicious File
#---------------------------------------------------------------------------------------
write-host "T1204.002 - User Execution: Malicious File"
write-host "T1204.002 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - OSTap Style Macro Execution"
invoke-atomictest T1204.002 -testnumber 1 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - OSTap Payload Download"
invoke-atomictest T1204.002 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Maldoc choice flags command execution"
invoke-atomictest T1204.002 -testnumber 3 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - OSTAP JS version"
invoke-atomictest T1204.002 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 4 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - Office launching .bat file from AppData"
invoke-atomictest T1204.002 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 5 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 5 -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Excel 4 Macro"
invoke-atomictest T1204.002 -testnumber 6 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #7 - Headless Chrome code execution via VBA"
invoke-atomictest T1204.002 -testnumber 7 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 7 -timeout 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #8 - Potentially Unwanted Applications (PUA)"
invoke-atomictest T1204.002 -testnumber 8 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #10 - LNK Payload Download"
invoke-atomictest T1204.002 -testnumber 10 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1204.002 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1036.005 - Masquerading: Match Legitimate Name or Location
#---------------------------------------------------------------------------------------
write-host "T1036.005 - Masquerading: Match Legitimate Name or Location"
write-host "T1036.005 Process Start, Press Any Key to Continue";read-host

# $dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Execute a process from a directory masquerading as the current parent directory."
# invoke-atomictest T1036.005 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath #Linux
# invoke-atomictest T1036.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux
# invoke-atomictest T1036.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Masquerade as a built-in system executable"
invoke-atomictest T1036.005 -testnumber 2 -GetPrereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.005 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1036.005 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1547.001 - Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder
#---------------------------------------------------------------------------------------
write-host "T1547.001 - Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder"
write-host "T1547.001 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Reg Key Run"
invoke-atomictest T1547.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Reg Key RunOnce"
invoke-atomictest T1547.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # # 관리자 권한
invoke-atomictest T1547.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - PowerShell Registry RunOnce"
invoke-atomictest T1547.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Suspicious vbs file run from startup Folder"
invoke-atomictest T1547.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - Suspicious jse file run from startup Folder"
invoke-atomictest T1547.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Suspicious bat file run from startup Folder"
invoke-atomictest T1547.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #7 - Add Executable Shortcut Link to User Startup Folder"
invoke-atomictest T1547.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #8 - Add persistance via Recycle bin"
invoke-atomictest T1547.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #9 - SystemBC Malware-as-a-Service Registry"
invoke-atomictest T1547.001 -testnumber 9 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #10 - Change Startup Folder - HKLM Modify User Shell Folders Common Startup Value"
invoke-atomictest T1547.001 -testnumber 10 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #11 - Change Startup Folder - HKCU Modify User Shell Folders Startup Value"
invoke-atomictest T1547.001 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1547.001 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #12 - HKCU - Policy Settings Explorer Run Key"
invoke-atomictest T1547.001 -testnumber 12 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #13 - HKLM - Policy Settings Explorer Run Key"
invoke-atomictest T1547.001 -testnumber 13 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #14 - HKLM - Append Command to Winlogon Userinit KEY Value"
invoke-atomictest T1547.001 -testnumber 14 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #15 - HKLM - Modify default System Shell - Winlogon Shell KEY Value"
invoke-atomictest T1547.001 -testnumber 15 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1547.001 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1071.001 - Application Layer Protocol: Web Protocols
#---------------------------------------------------------------------------------------
write-host "T1071.001 - Application Layer Protocol: Web Protocols"
write-host "T1071.001 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Malicious User Agents - Powershell"
invoke-atomictest T1071.001 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1071.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1071.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Malicious User Agents - CMD"
invoke-atomictest T1071.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1071.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1071.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Malicious User Agents - Nix"
#invoke-atomictest T1071.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1071.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1071.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#---------------------------------------------------------------------------------------
# T1056.001 - Input Capture: Keylogging
#---------------------------------------------------------------------------------------
write-host "T1056.001 - Input Capture: Keylogging"
write-host "T1056.001 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Input Capture"
write-host "1. pip3 install pynput"
write-host "2. python C:\atomic-red-team\atomics\T1056.001\src\Get-Keystrokes-afirst.py"
write-host "3. Remove-Item C:\Users\[user Profile]\logs.txt -ErrorAction Ignore"

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Living off the land Terminal Input Capture on Linux with pam.d"
#invoke-atomictest T1056.001A -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Logging bash history to syslog"
#invoke-atomictest T1056.001A -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Bash session based keylogger"
#invoke-atomictest T1056.001A -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - SSHD PAM keylogger"
#invoke-atomictest T1056.001A -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Auditd keylogger"
#invoke-atomictest T1056.001A -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #7 - MacOS Swift Keylogger"
#invoke-atomictest T1056.001A -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1056.001A -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#---------------------------------------------------------------------------------------
# T1555.003 - Credentials from Password Stores: Credentials from Web Browsers
#---------------------------------------------------------------------------------------
write-host "T1555.003 - Credentials from Password Stores: Credentials from Web Browsers"
write-host "T1555.003 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Run Chrome-password Collector"
invoke-atomictest T1555.003 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1555.003 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1555.003 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Search macOS Safari Cookies"
#invoke-atomictest T1555.003 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1555.003 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1555.003 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - LaZagne - Credentials from Browser"
invoke-atomictest T1555.003 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1555.003 -testnumber 3 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1555.003 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Simulating access to Chrome Login Data"
invoke-atomictest T1555.003 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1555.003 -testnumber 4 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1555.003 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - Simulating access to Opera Login Data"
invoke-atomictest T1555.003 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 5 -ExecutionLogPath $ExecutionLogPath한
invoke-atomictest T1555.003 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Simulating access to Windows Firefox Login Data"
invoke-atomictest T1555.003 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #7 - Simulating access to Windows Edge Login Data"
invoke-atomictest T1555.003 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #8 - Decrypt Mozilla Passwords with Firepwd.py"
invoke-atomictest T1555.003 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 8 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #9 - LaZagne.py - Dump Credentials from Firefox Browser"
#invoke-atomictest T1555.003 -testnumber 9 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1555.003 -testnumber 9 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1555.003 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #10 - Stage Popular Credential Files for Exfiltration"
invoke-atomictest T1555.003 -testnumber 10 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 10 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #11 - WinPwn - BrowserPwn"
invoke-atomictest T1555.003 -testnumber 11 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 11 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #12 - WinPwn - Loot local Credentials - mimi-kittenz"
invoke-atomictest T1555.003 -testnumber 12 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 12 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #13 - WinPwn - PowerSharpPack - Sharpweb for Browser Credentials"
invoke-atomictest T1555.003 -testnumber 13 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 13 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #14 - Simulating Access to Chrome Login Data - MacOS"
#invoke-atomictest T1555.003 -testnumber 14 -Getprereqs -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1555.003 -testnumber 14 -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1555.003 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath #MacOS

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #15 - WebBrowserPassView - Credentials from Browser"
invoke-atomictest T1555.003 -testnumber 15 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 15 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #16 - BrowserStealer (Chrome / Firefox / Microsoft Edge)"
invoke-atomictest T1555.003 -testnumber 16 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 16 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1555.003 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath


#---------------------------------------------------------------------------------------
# T1082 - System Information Discovery
#---------------------------------------------------------------------------------------
write-host "T1082 - System Information Discovery"
write-host "T1082 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - System Information Discovery"
invoke-atomictest T1082 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - System Information Discovery"
#invoke-atomictest T1082 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1082 -testnumber 2 -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1082 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath #MacOS

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - List OS Information"
#invoke-atomictest T1082 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Linux VM Check via Hardware"
#invoke-atomictest T1082 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - Linux VM Check via Kernel Modules"
#invoke-atomictest T1082 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Hostname Discovery (Windows)"
invoke-atomictest T1082 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 6 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #7 - Hostname Discovery"
#invoke-atomictest T1082 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #8 - Windows MachineGUID Discovery"
invoke-atomictest T1082 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 8 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #9 - Griffon Recon"
invoke-atomictest T1082 -testnumber 9 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 9 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 9 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #10 - Environment variables discovery on windows"
invoke-atomictest T1082 -testnumber 10 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 10 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 10 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #11 - Environment variables discovery on macos and linux"
#invoke-atomictest T1082 -testnumber 11 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 11 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 11 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #12 - Show System Integrity Protection status (MacOS)"
#invoke-atomictest T1082 -testnumber 12 -Getprereqs -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1082 -testnumber 12 -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1082 -testnumber 12 -Cleanup -ExecutionLogPath $ExecutionLogPath #MacOS

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #13 - WinPwn - winPEAS"
invoke-atomictest T1082 -testnumber 13 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 13 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 13 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #14 - WinPwn - itm4nprivesc"
invoke-atomictest T1082 -testnumber 14 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 14 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 14 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #15 - WinPwn - Powersploits privesc checks"
invoke-atomictest T1082 -testnumber 15 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 15 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 15 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #16 - WinPwn - General privesc checks"
invoke-atomictest T1082 -testnumber 16 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 16 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 16 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #17 - WinPwn - GeneralRecon"
invoke-atomictest T1082 -testnumber 17 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 17 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 17 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #18 - WinPwn - Morerecon"
invoke-atomictest T1082 -testnumber 18 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 18 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 18 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #19 - WinPwn - RBCD-Check"
invoke-atomictest T1082 -testnumber 19 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 19 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 19 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #20 - WinPwn - PowerSharpPack - Watson searching for missing windows patches"
invoke-atomictest T1082 -testnumber 20 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 20 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 20 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #21 - WinPwn - PowerSharpPack - Sharpup checking common Privesc vectors"
invoke-atomictest T1082 -testnumber 21 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 21 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 21 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #22 - WinPwn - PowerSharpPack - Seatbelt"
invoke-atomictest T1082 -testnumber 22 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 22 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1082 -testnumber 22 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #23 - Azure Security Scan with SkyArk"
#invoke-atomictest T1082 -testnumber 23 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Azure-Ad
#invoke-atomictest T1082 -testnumber 23 -ExecutionLogPath $ExecutionLogPath #Azure-AD
#invoke-atomictest T1082 -testnumber 23 -Cleanup -ExecutionLogPath $ExecutionLogPath #Azure-AD

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #24 - Linux List Kernel Modules"
#invoke-atomictest T1082 -testnumber 24 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 24 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1082 -testnumber 24 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#---------------------------------------------------------------------------------------
# T1083 - File and Directory Discovery
#---------------------------------------------------------------------------------------
write-host "T1083 - File and Directory Discovery"
write-host "T1083 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - File and Directory Discovery (cmd.exe)"
invoke-atomictest T1083 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 1 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - File and Directory Discovery (PowerShell)"
invoke-atomictest T1083 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 2 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Nix File and Directory Discovery"
#invoke-atomictest T1083 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1083 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1083 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Nix File and Directory Discovery 2"
#invoke-atomictest T1083 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1083 -testnumber 4 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1083 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - Simulating MAZE Directory Enumeration"
invoke-atomictest T1083 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 5 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath 

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Launch DirLister Executable"
invoke-atomictest T1083 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 6 -ExecutionLogPath $ExecutionLogPath 
invoke-atomictest T1083 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath 

#---------------------------------------------------------------------------------------
# T1057 - Process Discovery
#---------------------------------------------------------------------------------------
write-host "T1057 - Process Discovery"
write-host "T1057 Process Start, Press Any Key to Continue";read-host

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Process Discovery - ps"
#invoke-atomictest T1057 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1057 -testnumber 1 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1057 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Process Discovery - tasklist"
invoke-atomictest T1057 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 2 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Process Discovery - Get-Process"
invoke-atomictest T1057 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 3 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Process Discovery - get-wmiObject"
invoke-atomictest T1057 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 4 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - Process Discovery - wmic process"
invoke-atomictest T1057 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 5 -ExecutionLogPath $ExecutionLogPath # 관리자 권한
invoke-atomictest T1057 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath # 관리자 권한

#---------------------------------------------------------------------------------------
# T1016 - System Network Configuration Discovery
#---------------------------------------------------------------------------------------
write-host "T1016 - System Network Configuration Discovery"
write-host "T1016 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - System Network Configuration Discovery on Windows"
invoke-atomictest T1016 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - List Windows Firewall Rules"
invoke-atomictest T1016 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - System Network Configuration Discovery"
#invoke-atomictest T1016 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1016 -testnumber 3 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1016 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - System Network Configuration Discovery (TrickBot Style)"
invoke-atomictest T1016 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - List Open Egress Ports"
invoke-atomictest T1016 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 5 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Adfind - Enumerate Active Directory Subnet Objects"
invoke-atomictest T1016 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 6 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #7 - Qakbot Recon"
invoke-atomictest T1016 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 7 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1016 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #8 - List macOS Firewall Rules"
#invoke-atomictest T1016 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1016 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #MacOS
#invoke-atomictest T1016 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #MacOS

#---------------------------------------------------------------------------------------
# T1560.001 - Archive Collected Data: Archive via Utility
#---------------------------------------------------------------------------------------
write-host "T1560.001 - Archive Collected Data: Archive via Utility"
write-host "T1560.001 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Compress Data for Exfiltration With Rar"
invoke-atomictest T1560.001 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Compress Data and lock with password for Exfiltration with winrar"
invoke-atomictest T1560.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Compress Data and lock with password for Exfiltration with winzip"
invoke-atomictest T1560.001 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Compress Data and lock with password for Exfiltration with 7zip"
invoke-atomictest T1560.001 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1560.001 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #5 - Data Compressed - nix - zip"
#invoke-atomictest T1560.001 -testnumber 5 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 5 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 5 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #6 - Data Compressed - nix - gzip Single File"
#invoke-atomictest T1560.001 -testnumber 6 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 6 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 6 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #7 - Data Compressed - nix - tar Folder or File"
#invoke-atomictest T1560.001 -testnumber 7 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 7 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 7 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #8 - Data Encrypted with zip and gpg symmetric"
#invoke-atomictest T1560.001 -testnumber 8 -Getprereqs -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 8 -ExecutionLogPath $ExecutionLogPath #Linux
#invoke-atomictest T1560.001 -testnumber 8 -Cleanup -ExecutionLogPath $ExecutionLogPath #Linux

#---------------------------------------------------------------------------------------
# T1041 - Exfiltration Over C2 Channel
#---------------------------------------------------------------------------------------
write-host "T1041 - Exfiltration Over C2 Channel"
write-host "T1041 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - C2 Data Exfiltration"
invoke-atomictest T1041 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1041 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1041 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1567.002 - Exfiltration Over Web Service: Exfiltration to Cloud Storage
#---------------------------------------------------------------------------------------
write-host "T1567.002 - Exfiltration Over Web Service: Exfiltration to Cloud Storage"
write-host "T1567.002 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Exfiltrate data with rclone to cloud Storage - Mega (Windows)"
invoke-atomictest T1567.002 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1567.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1567.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1021.001 - Remote Services: Remote Desktop Protocol
#---------------------------------------------------------------------------------------
write-host "T1021.001 - Remote Services: Remote Desktop Protocol"
write-host "T1021.001 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - RDP to DomainController"
invoke-atomictest T1021.001 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.001 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.001 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Changing RDP Port to Non Standard Port via Powershell"
invoke-atomictest T1021.001 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.001 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.001 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Changing RDP Port to Non Standard Port via Command_Prompt"
invoke-atomictest T1021.001 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.001 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.001 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1021.002 - Remote Services: SMB/Windows Admin Shares
#---------------------------------------------------------------------------------------
write-host "T1021.002 - Remote Services: SMB/Windows Admin Shares"
write-host "T1021.002 Process Start, Press Any Key to Continue";read-host

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Map admin share"
invoke-atomictest T1021.002 -testnumber 1 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 1 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 1 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #2 - Map Admin Share PowerShell"
invoke-atomictest T1021.002 -testnumber 2 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 2 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 2 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #3 - Copy and Execute File with PsExec"
invoke-atomictest T1021.002 -testnumber 3 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 3 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 3 -Cleanup -ExecutionLogPath $ExecutionLogPath

$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #4 - Execute command writing output to local Admin Share"
invoke-atomictest T1021.002 -testnumber 4 -Getprereqs -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 4 -ExecutionLogPath $ExecutionLogPath
invoke-atomictest T1021.002 -testnumber 4 -Cleanup -ExecutionLogPath $ExecutionLogPath

#---------------------------------------------------------------------------------------
# T1021.004 - Remote Services: SSH
#---------------------------------------------------------------------------------------
write-host "T1021.004 - Remote Services: SSH"
write-host "T1021.004 Process Start, Press Any Key to Continue";read-host
$dt=date;write-host $dt.ToString("yyyy-MM-dd HH:mm:ss") "Atomic Test #1 - Putty"
invoke-atomictest T1021.004A -testnumber 1 -ExecutionLogPath $ExecutionLogPath