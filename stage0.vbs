Option Explicit
On Error Resume Next

Dim objWshShell     ' WshShell �I�u�W�F�N�g
Dim objShell
Dim objFso

Set objWshShell = WScript.CreateObject("WScript.Shell")
'����N������stage1.vbs�����s
objWshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\exec", "C:\windows\system32\cscript.exe C:\work\stage1.vbs", "REG_SZ"

'�������O�C���ݒ�
objWshShell.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUserName", "setupuser", "REG_SZ"
objWshShell.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultPassword", "Passw0rd!", "REG_SZ"
objWshShell.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon", "1", "REG_SZ"

Set objFso = CreateObject("Scripting.FileSystemObject")

objFso.CopyFile "C:\Windows\customized\LayoutModification.xml","C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml"

Set objShell = WScript.CreateObject("WScript.Shell")

objShell.Run "C:\WINDOWS\system32\shutdown.exe -r -t 0"
