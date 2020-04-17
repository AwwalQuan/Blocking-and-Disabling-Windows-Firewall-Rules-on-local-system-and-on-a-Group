#Create a comma seperated list of rule names to disable
$RuleNames = 'SDNS', 'SDNS2', "Random Name"

#Remove all the Firewall rules in the list
foreach ($Rule in $RuleNames){
    Disable-NetFirewallRule -DisplayName $Rule
    Write-Host "Firewal rule $Rule disabled"
}