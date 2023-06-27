#powershell -exec bypass

# if dir exist 
# do nothing
# else
#IEX (IWR 'https://raw.githubusercontent.com/crav3r/invoke-atomicredteam/round4test/install-atomicredteam.ps1' -UseBasicParsing);
#Install-AtomicRedTeam -getAtomics -getRound4TestStep -InstallPath "C:\Mitre\Round5" -Force

Import-Module "C:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest_auto_privilege.log"
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) 


Start-Transcript "c:\round5test\Round5TestAuto_privilege.ps1.log"

$sleeptime = 10

$file = Get-Content c:\round5test\Round5TestStep_privilege.ps1

foreach ($line in $file)
{
    $dt=date
    if($line -like 'invoke-atomictest*')
    {
        write-host $dt.ToString("yyyy-MM-dd HH:mm:ss");
        IEX $line
        ping -n $sleeptime 127.0.0.1
    }
    else {
        #do nothing
    }
    
}

Stop-Transcript
