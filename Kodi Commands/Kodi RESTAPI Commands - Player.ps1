$username = 'kodi'
$password = 'staind5262'
$IPaddress = '192.168.1.3'

#Stops Player
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Player.Stop'
    'id' = 1
    'params' = @{
        playerid = 0
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
#################################################################
#################################################################
#################################################################

$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Player.Stop'
    'id' = 1
    'params' = @{
        playerid = 0
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq


#################################################################
#################################################################
#################################################################
#Lists Players
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Player.GetPlayers'
    'id' = 1
    'params' = @{
       
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result