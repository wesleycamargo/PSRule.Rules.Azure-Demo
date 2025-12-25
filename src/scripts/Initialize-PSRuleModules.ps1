Install-Module -Name 'PSRule.Rules.Azure' -Repository PSGallery -Scope CurrentUser;
Install-Module -Name Az -Repository PSGallery -Force -Scope CurrentUser;
Install-Module -Name Az.Accounts -Repository PSGallery -Force -Scope CurrentUser;

Import-Module Az.Accounts;