cd HKLM:\
set-location -path '\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
Set-ItemProperty -Path '\Software\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ValidateAdminCodeSignatures' -Value 0