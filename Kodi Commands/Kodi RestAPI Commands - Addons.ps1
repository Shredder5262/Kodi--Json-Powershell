#Returns a list of currently installed addons
$username ='kodi'
$pwd = 'staind5262'
$hostname = '192.168.1.3'
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Addons.GetAddons'
    'id' = 1
    'params' = @{

    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.addons

#################################################################
#################################################################
#################################################################

#Gets details for a specific addon
#Required Details addonid
$username ='kodi'
$pwd = 'staind5262'
$hostname = '192.168.1.3'
$port = '8080'
$addonid = 'script.artwork.helper'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Addons.GetAddonDetails'
    'id' = 1
    'params' = @{
        addonid = $addonid
        properties = @(
        'name',
        'version',
        'summary',
        'description',
        'path',
        'author',
        'thumbnail',
        'disclaimer',
        'fanart',
        'dependencies',
        'broken',
        'extrainfo',
        'rating',
        'enabled',
        'installed',
        'deprecated'
     )
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.addon

#################################################################
#################################################################
#################################################################
$username ='kodi'
$pwd = 'staind5262'
$hostname = '192.168.1.3'
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Addons.SetAddonEnabled'
    'id' = 1
    'params' = @{
        addonid = 'service.tvtunes'
        enabled = 'false'
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.addons
