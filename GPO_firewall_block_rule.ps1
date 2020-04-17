#Below is a sample of what the GPO rule looks like
#New-NetFireWallRule -DisplayName "Rule Name" -Direction Inbound -Protocol TCP -LocalPort 445 -Action allow -group "Group Name"

#Enter the List of ports you want to block and the name of the group you want the rule effective on
$PortList = '44545', '338449'
$GroupName = 'Enter the group name'


foreach ($Port in $PortList){
    New-NetFireWallRule -DisplayName "Close Inbound on $Port" -Direction Inbound -Protocol TCP -LocalPort $Port -Action Block -group "$GroupName"
    Write-Host "Firewall rule Close Inbound on $Port enabled"
}



