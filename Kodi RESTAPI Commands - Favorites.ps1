$username = 'username'
$password = 'password'
$IPaddress = 'ipaddress'

#Returns a list of favorites
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Favourites.GetFavourites'
    'id' = 1
    'params' = @{
       
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.favourites