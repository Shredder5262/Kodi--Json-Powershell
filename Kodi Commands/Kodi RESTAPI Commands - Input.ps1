$username = 'username'
$password = 'password'
$IPaddress = 'IPAddress'
#################################################################
#################################################################
#################################################################
#Opens Context Menu
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Input.ContextMenu'
    'id' = 1
    'params' = @{

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
#Goes Home/Main Menu
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Input.Home'
    'id' = 1
    'params' = @{

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
#Shows Info Screen on Highlighted Item
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Input.Info'
    'id' = 1
    'params' = @{

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
#Navigates Right
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Input.Right'
    'id' = 1
    'params' = @{

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
#Navigates Left
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Input.Left'
    'id' = 1
    'params' = @{

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
#Navigates Up
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Input.Up'
    'id' = 1
    'params' = @{

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
#Navigates Down
$username = $username
$unsecurepassword = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $unsecurepassword -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Input.Down'
    'id' = 1
    'params' = @{

    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq