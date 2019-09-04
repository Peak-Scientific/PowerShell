$cred=Get-Credential
$session = New-CsOnlineSession -Credential $cred -Verbose -OverrideAdminDomain peakscientific.onmicrosoft.com
Import-PSSession $session





$number = "tel:+441414652334"
$user = "amckendry@peakscientific.com"

Get-CsOnlineUser -Identity $user | select onpremlineuri
Get-CsUserPstnSettings -Identity $user


Set-CsUser -Identity $user -EnterpriseVoiceEnabled $true -HostedVoiceMail $true -OnPremLineURI $number
Set-CsUserPstnSettings -Identity $user -HybridPSTNSite UKCCE1access
