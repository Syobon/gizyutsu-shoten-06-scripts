Option Explicit
On Error Resume Next

Dim objWshShell     ' WshShell オブジェクト
Dim objShell
Dim objFso

Set objWshShell = WScript.CreateObject("WScript.Shell")
'次回起動時にstage1.vbsを実行
objWshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\exec", "C:\windows\system32\cscript.exe C:\work\stage1.vbs", "REG_SZ"

'自動ログイン設定
objWshShell.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUserName", "setupuser", "REG_SZ"
objWshShell.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultPassword", "Passw0rd!", "REG_SZ"
objWshShell.RegWrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon", "1", "REG_SZ"

Set objFso = CreateObject("Scripting.FileSystemObject")

objFso.CopyFile "C:\Windows\customized\LayoutModification.xml","C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml"

Set objShell = WScript.CreateObject("WScript.Shell")

objShell.Run "C:\WINDOWS\system32\shutdown.exe -r -t 0"
