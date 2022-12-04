$username = 'username'
$password = 'password'
$IPaddress = 'IPAddress'


#################################################################
#################################################################
#################################################################
#Returns a list of Recently Added Albums
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
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
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'AudioLibrary.GetArtists'
    'id' = 1
    'params' = @{
        properties = @(
            'fanart',
            'thumbnail',
            'formed',
            'disbanded',
            'yearsactive',
            'mood',
            'style',
            'genre',
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
($webreq.content|convertfrom-json).result.artists | Sort-Object -Property Artist
#################################################################
#################################################################
#################################################################
#Get Details Artists
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Audio.Details.Artist'
    'id' = 1
    'params' = @{
        artist   = 'The Runaways'
        artistid = '10099' 
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.artists | Sort-Object -Property artist
#################################################################
#################################################################
#################################################################
#Get Albums
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'AudioLibrary.GetAlbums'
    'id' = 1
    'params' = @{
        properties = @(
            'albumduration',
            'albumlabel',
            'albumstatus',
            'compilation',
            'isboxset',
            'lastplayed',
            'musicbrainzalbumid',
            'musicbrainzreleasegroupid',
            'releasetype',
            'songgenres',
            'style',
            'theme',
            'totaldiscs',
            'type'
        )
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.albums | Sort-Object -Property Artist