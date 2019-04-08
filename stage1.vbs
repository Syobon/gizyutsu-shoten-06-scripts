Option Explicit
On Error Resume Next

Dim objWshShell
Dim objShell

Set objWshShell = WScript.CreateObject("WScript.Shell")
If Err.Number = 0 Then
    '高速スタートアップの無効化
    objWshShell.RegWrite "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Power\HiberbootEnabled", 0, "REG_DWORD"
    'エクスプローラーのサイドバーからOneDriveを削除
    objWshShell.RegDelete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
    objWshShell.RegDelete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
    '後処理（自動ログイン無効化）
    objWshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon", "0", "REG_SZ"
    objWshShell.RegDelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Password"
Else
    WScript.Echo "エラー: " & Err.Description
End If

Set objShell = WScript.CreateObject("WScript.Shell")

objShell.Run "C:\WINDOWS\system32\shutdown.exe -r -t 0"