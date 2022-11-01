#powershell -exec bypass

# if dir exist 
# do nothing
# else
#IEX (IWR 'https://raw.githubusercontent.com/crav3r/invoke-atomicredteam/round4test/install-atomicredteam.ps1' -UseBasicParsing);
#Install-AtomicRedTeam -getAtomics -getRound4TestStep -InstallPath "C:\Mitre\Round5" -Force

Import-Module "C:\r5\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="C:\r5\atomic-red-team\atomics"}
$ExecutionLogPath = "C:\r5\atomic-red-team\atomictest_auto_privilege.log"
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).isInRole([Security.Principal.WindowsBuiltinRole]::Administrator) 


Start-Transcript "C:\r5\Round5TestAuto_privilege.ps1.log"

$sleeptime = 10

$file = Get-Content C:\r5\atomic-red-team\round5test\Round5TestStep_privilege.ps1

foreach ($line in $file)
{
    $dt=date
    if($line -like 'invoke-atomictest*')
    {
        write-host $dt.ToString("yyyy-MM-dd HH:mm:ss");
        IEX $line
        timeout /t $sleeptime
    }
    else {
        #do nothing
    }
    
}

Stop-Transcript
