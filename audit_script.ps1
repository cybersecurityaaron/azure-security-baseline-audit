# Azure Login
Connect-AzAccount

# Check MFA setting
$mfa = Get-AzureADPolicy | Where-Object {$_.Type -eq "ConditionalAccess"}
if ($mfa) {
    Write-Output "✅ MFA Policy Found."
} else {
    Write-Output "❌ No MFA Policy Found."
}

# Check if any NSGs exist
$nsgs = Get-AzNetworkSecurityGroup
if ($nsgs.Count -gt 0) {
    Write-Output "✅ NSGs exist and are configured."
} else {
    Write-Output "❌ No NSGs found."
}

# Check Key Vault soft delete
$keyVaults = Get-AzKeyVault
foreach ($vault in $keyVaults) {
    if ($vault.EnableSoftDelete) {
        Write-Output "✅ Soft Delete enabled for $($vault.VaultName)"
    } else {
        Write-Output "❌ Soft Delete NOT enabled for $($vault.VaultName)"
    }
}
