#################################################################
#################################################################
#################################################################
#Returns a list of Recently Added Albums
$username ='kodi'
$pwd = 'staind5262'
$hostname = '192.168.1.20'
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'AudioLibrary.GetRecentlyAddedAlbums'
    'id' = 6
    'params' = @{
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.albums

#################################################################
#################################################################
#################################################################
#Get Artists
$username ='kodi'
$pwd = 'staind5262'
$hostname = '192.168.1.20'
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'AudioLibrary.GetArtists'
    'id' = 1
    'params' = @{
        properties = @(
            'born',
            'died',
            'sortname'

        )
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.artists | Sort-Object -Property Artist|Out-GridView