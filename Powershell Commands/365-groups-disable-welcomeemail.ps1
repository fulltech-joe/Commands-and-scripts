Step 1: Connect to Office 365
$session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid/" -Credential $cred -Authentication Basic -AllowRedirection

Step 2: Import Session
Import-PSSession $session

Disable Email
Set-UnifiedGroup namebefore@ -UnifiedGroupWelcomeMessageEnabled:$false