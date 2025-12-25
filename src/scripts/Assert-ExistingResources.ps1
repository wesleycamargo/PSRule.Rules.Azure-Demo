# STEP 1: Authenticate to Azure, only required if not currently connected
Connect-AzAccount -UseDeviceAuthentication;

# STEP 2: Confirm the current subscription context
Get-AzContext;

# STEP 3: Exports Azure resources to JSON files
Export-AzRuleData -OutputPath 'out/';

Invoke-PSRule -InputPath 'out/' -Module 'PSRule.Rules.Azure';


Assert-PSRule -InputPath 'out/' -Module 'PSRule.Rules.Azure' -o Markdown -OutputPath .\reports\results.md