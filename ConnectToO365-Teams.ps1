Import-Module MicrosoftTeams

$credentials=Get-Credential

Connect-MicrosoftTeams -Credential $credentials

Get-Team