#Check Ip Address and Rest it(DHCP issues and renewal)
#Release and renew IP address DHCP

Write-Host "Releasing Current IP_Address for you..."
ipconfig /release
Start-Sleep -Seconds 5

Write-Host "Renewing IP address for you..."
Ipconfig /renew

Get-NetAdapter | Format-Table Name, Statusm, MacAddress, LinkSpeed

#list all adapters and status

Get-NetAdapter | Format-Table Name, Status

#Enable all adapters

Get-NetAdapter | Where-Object { $_.Status -eq "Disabled" } | Enable-NetAdapter -Confirm:$false

#Check if disconnedcted 

Disable-NetAdapter -Name "Local Area Connection* 1" -Confirm:$false
Disable-NetAdapter -Name "Local Area Connection* 2" -confirm:$false

#Restart all network adapters 

Get-NetAdapter | Where-Object { $_.Status -ne "Up" } | ForEach-Object {
Disable-NetAdapter -Name $_.Name -Confirm:$false
Start-Sleep -Seconds 5
Enable-NetAdapter -Name $_.Name -Confirm:$false

}


#Reset TCP/IP stack

netsh int ip reset

#Restart the Machine 

#Restart-Computer