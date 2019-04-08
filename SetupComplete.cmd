C:\Windows\System32bcdedit.exe /set {default} recoveryenabled No
C:\Windows\System32bcdedit.exe /set {default} bootstatuspolicy ignoreallfailures
C:\Windows\System32bcdedit.exe /set {current} recoveryenabled No
C:\Windows\System32bcdedit.exe /set {current} bootstatuspolicy ignoreallfailures
cd /d C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\01a*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\02a*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\03*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\04*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\04-1*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\05*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\06*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\07*
C:\Windows\System32\attrib.exe -H C:\Users\Administrator\AppData\Local\Microsoft\Windows\WinX\Group3\09*
C:\windows\system32\cscript.exe C:\work\stage0.vbs