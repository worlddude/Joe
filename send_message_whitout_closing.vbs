do
set shell = createobject ("wscript.shell") 

strtext = inputbox ("Write down what u want to say") 
strtimeneed = inputbox ("in how many sec do u want to say it (3600 = 1 hour)")

strtimeneed2 = strtimeneed * 1000 
do 
msgbox "You have " & strtimeneed & " seconds to get to your input area where you are going to type." 
wscript.sleep strtimeneed2 
shell.sendkeys (strtext & "{enter}")  
wscript.quit
loop
loop