$user = "logisticscallgroup@peakscientific.com"

Grant-CsOnlineVoiceRoutingPolicy -Identity $user -PolicyName "UK Calls"

Set-CsUserPstnSettings -Identity $user -AllowInternationalCalls $true -HybridPSTNSite $null

Get-CsOnlineUser -Identity $user | fl *ONLINEVOICEROUTING*

Get-CsUserPstnSettings -Identity $user
Get-CsOnlineUser -Identity $user | select onpremlineuri