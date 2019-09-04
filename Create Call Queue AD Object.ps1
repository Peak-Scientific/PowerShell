$sipaddress = "sip:hg12334@peakscientific.com"
$DisplayName = "UK Call Queue" # Must match display name in Skype
$phonenumber = "+44144xxxxxxxx"
$ou = "OU=Call Queues,OU=Lync,DC=peakscientific,DC=local"


$lineuri = "tel:" + $phonenumber
$cqurnguid = "11cd3e2e-fccb-42ad-ad00-878b93575e07"
$deploc = "sipfed.online.lync.com"
$urnprefix = "urn:trustedonlineplatformapplication:"
$objurn = $urnprefix + $cqurnguid
$cn = "CN=" + $DisplayName
$dn = $cn + "," + $ou
$upn = $sipaddress.replace("sip:","")


New-ADObject -type User -Path $ou -Name $displayname -DisplayName $displayname
Set-ADObject -Identity $dn -Add @{"msRTCSIP-ApplicationOptions"=256;"msRTCSIP-ArchivingEnabled"=0;"msRTCSIP-DeploymentLocator"=$deploc;"msRTCSIP-OptionFlags"=384;"msRTCSIP-OwnerUrn"=$objurn;"msRTCSIP-PrimaryUserAddress"=$sipaddress;"msRTCSIP-UserEnabled"=$TRUE;"msRTCSIP-Line"=$lineuri;"UserPrincipalName"=$upn}