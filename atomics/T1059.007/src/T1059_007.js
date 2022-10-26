Cmd="%comspec% /c dir c:\\ > c:\\Windows\\TEMP\\T1059_007.txt";
WshShell=new ActiveXObject("WScript.Shell");
Exec=WshShell.Run(Cmd,1,true);
fso=new ActiveXObject("Scripting.FileSystemObject");
ts=fso.OpenTextFile("c:\\Windows\\TEMP\\T1059_007.txt",1);
msg=ts.ReadAll();
ts.Close();
