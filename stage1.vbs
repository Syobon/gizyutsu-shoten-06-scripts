Option Explicit
On Error Resume Next

Dim objWshShell
Dim objShell

Set objWshShell = WScript.CreateObject("WScript.Shell")
If Err.Number = 0 Then
    '�����X�^�[�g�A�b�v�̖�����
    objWshShell.RegWrite "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Power\HiberbootEnabled", 0, "REG_DWORD"
    '�G�N�X�v���[���[�̃T�C�h�o�[����OneDrive���폜
    objWshShell.RegDelete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
    objWshShell.RegDelete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
    '�㏈���i�������O�C���������j
    objWshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon", "0", "REG_SZ"
    objWshShell.RegDelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Password"
Else
    WScript.Echo "�G���[: " & Err.Description
End If

Set objShell = WScript.CreateObject("WScript.Shell")

objShell.Run "C:\WINDOWS\system32\shutdown.exe -r -t 0"