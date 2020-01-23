Test-CsEffectiveTenantDialPlan -DialedNumber 8007212508 -Identity cmurray@peakscientific.com

Get-CsEffectiveTenantDialPlan -Identity smahnke@peakscientific.com | Test-CsEffectiveTenantDialPlan -DialedNumber 8007212508

Get-CsEffectiveTenantDialPlan -Identity emuellers@peakscientific.com

Get-CsEffectiveTenantDialPlan -Identity emuellers@peakscientific.com | Test-CsEffectiveTenantDialPlan -DialedNumber 016091565900

Get-CsTenantDialPlan  -Identity GermanyDP
Get-CsTenantDialPlan  -Identity USADialPlan

Grant-cstenantdialplan -policyname GermanyDP -identity $user
