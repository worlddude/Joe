wscript.sleep 5000
Set WshShell = CreateObject("WScript.Shell")

password = "0682"
strComputer = "."
strExe = "taskkill /F /IM explorer.exe"
' Connect to WMI
set objWMIService = getobject("winmgmts://"_
& strComputer & "/root/cimv2")

' Obtain the Win32_Process class of object.
Set objProcess = objWMIService.Get("Win32_Process")
Set objProgram = objProcess.Methods_( _
"Create").InParameters.SpawnInstance_
objProgram.CommandLine = strExe

'Execute the program now at the command line.
Set strShell = objWMIService.ExecMethod( _
"Win32_Process", "Create", objProgram)
Do
returnvalue = inputbox("please enter administrator password")
Select case returnvalue
Case Password
strComputer = "."
strExe = "explorer.exe"
' Connect to WMI
set objWMIService = getobject("winmgmts://"_
& strComputer & "/root/cimv2")

' Obtain the Win32_Process class of object.
Set objProcess = objWMIService.Get("Win32_Process")
Set objProgram = objProcess.Methods_( _
"Create").InParameters.SpawnInstance_
objProgram.CommandLine = strExe

'Execute the program now at the command line.
Set strShell = objWMIService.ExecMethod( _
"Win32_Process", "Create", objProgram)

MsgBox "Welcome back"
Set vb = CreateObject("WScript.Shell")

Exit do
Case Else
MsgBox "Wrong password locking",0,"Wrong Password"
set shellobj = CreateObject("WScript.Shell")

shellobj.run "cmd"
wscript.sleep 0100
shellobj.sendkeys "shutdown "
wscript.sleep 010
Shellobj.sendkeys "-"
wscript.sleep 010
Shellobj.sendkeys "s "
wscript.sleep 010
Shellobj.sendkeys "-"
wscript.sleep 010
Shellobj.sendkeys "f "
wscript.sleep 010
Shellobj.sendkeys "-"
wscript.sleep 010
Shellobj.sendkeys "t "
wscript.sleep 010
Shellobj.sendkeys "1"
wscript.sleep 010
Shellobj.sendkeys "{ENTER}"
End select
Loop
