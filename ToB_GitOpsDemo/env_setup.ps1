$sp_name = 'tob_demo_sp_contrib'
$tenantID = '4a414dd8-5762-4937-bb06-64d67ae006a6'
$subID = '7c27312f-200e-47f6-a855-c308a26f1493'

Connect-AzAccount

Get-AzContext

Set-AzContext -Subscription  $subID

$sp = New-AzADServicePrincipal -DisplayName $sp_name -Role "Contributor"


$env:ARM_CLIENT_ID=$sp.AppId
$env:ARM_SUBSCRIPTION_ID=$subID
$env:ARM_TENANT_ID=$tenantID
$env:ARM_CLIENT_SECRET=$sp.PasswordCredentials.SecretText