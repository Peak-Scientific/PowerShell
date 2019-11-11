$nr1 = New-CsVoiceNormalizationRule -Parent Global -Name "Germany national dial" -Description "Enable local dial for Germany" -Pattern '^0(\d{6}\d+)$' -Translation '+49$1' -InMemory

#Creates a normalization rule which applies to numbers 8 digits or longer and then removes the first digit, the 0, and then replaces it with a +49.

New-CsTenantDialPlan  -Identity GermanyDP -NormalizationRules @{Add=$nr1}

#Creates a new tenant dial plan which includes the normalization rule created in the previous step.*

$country = "Germany"

$users = get-csonlineuser

$Users | ? {($_.Office -like $country)} | % {

Grant-cstenantdialplan -policyname GermanyDP -identity $_.userprincipalname

}
