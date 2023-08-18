wscript.sleep "9000"
set shell = createObject("wscript.shell")
a = MsgBox("this script is made by: mikkel skov",0+16,"decrypter")
if a = vbNo then
shell.run",vbs"
end if 
