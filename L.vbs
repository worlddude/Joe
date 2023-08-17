set shell = createObject("wscript.shell")
a = MsgBox("this script is made by: mikkel skov",0+16,"decrypter")
if a = vbNo then
shell.run",vbs"
end if 

set x = createObject("wscript.shell")
txt = inputbox("Skriv det som skal dekrypteres")
msgbox(encode(""& (txt)))
x.run"notepad"
wscript.sleep "1000"
x.sendkeys(encode(" "&(txt))) 
function encode(s)

for i=1 To Len(s)
newtxt = Mid( s,i,1)
newtxt = Chr(asc(newtxt) - 3)
coded = coded + (newtxt) 
next
encode = coded
End function