#check the current execution policy
$policy = Get-ExecutionPolicy

#disable av
Set-MpPreference -DisableRealtimeMonitoring $true

if ($policy -eq "Restricted") {
    Set-ExecutionPolicy Unrestricted
}

#unblock all the files
Get-ChildItem . -Recurse | Unblock-File

# Import modules
Import-Module .\PowerSploit\PowerSploit.psm1 
Import-Module .\nishang\nishang.psm1
Import-Module .\Posh-SecMod\Posh-SecMod.psm1
Import-Module .\Posh-SecMod\Audit\Audit.psm1
Import-Module .\Posh-SecMod\Database\Database.psm1
Import-Module .\Posh-SecMod\Discovery\Discovery.psm1
Import-Module .\Posh-SecMod\Parse\Parse.psm1
Import-Module .\Posh-SecMod\PostExploitation\PostExploitation.psm1
Import-Module .\Posh-SecMod\Registry\Registry.psm1
Import-Module .\Posh-SecMod\Utility\utility.psm1

Import-Module .\Posh-Shodan\Posh-Shodan.psm1

#Set-ShodanAPIKey -APIKey xxxxxxxxxxxxxxxxxxxxxx
#Read-ShodanAPIKey

