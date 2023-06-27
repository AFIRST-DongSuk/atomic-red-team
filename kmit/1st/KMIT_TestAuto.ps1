#powershell -exec bypass

# if dir exist 
# do nothing
# else
#IEX (IWR 'https://raw.githubusercontent.com/crav3r/invoke-atomicredteam/round4test/install-atomicredteam.ps1' -UseBasicParsing);
#Install-AtomicRedTeam -getAtomics -getRound4TestStep -InstallPath "C:\Mitre\Round5" -Force

Import-Module "c:\round5test\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="c:\round5test\atomics"}
$ExecutionLogPath = "c:\round5test\atomictest_auto.log"



Start-Transcript "c:\round5test\Round5TestAuto.ps1.log"

$sleeptime = 10

$file = Get-Content c:\round5test\Round5TestStep.ps1

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
