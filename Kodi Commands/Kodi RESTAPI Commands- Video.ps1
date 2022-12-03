$username = 'username'
$password = 'password'
$IPaddress = 'IPAddress'

#Returns a list a Music Playlists
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Files.GetDirectory'
    'id' = 6
    'params' = @{
        'directory' = 'special://musicplaylists'
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.files
#################################################################
#################################################################
#################################################################
#Returns a list a Video Playlists
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'Files.GetDirectory'
    'id' = 6
    'params' = @{
        'directory' = 'special://videoplaylists'
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.files
#################################################################
#################################################################
#################################################################

#Returns a list a Video Genres
#Type can = movie, tvshow, or musicvideo
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$Type = 'movie'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'VideoLibrary.GetGenres'
    'id' = 6
    'params' = @{
        type = $Type 
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.genres
#################################################################
#################################################################
#################################################################
#Returns a list a TVShows in Progress
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'VideoLibrary.GetInProgressTVShows'
    'id' = 6
    'params' = @{
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.tvshows
#################################################################
#################################################################
#################################################################
#Returns a list a TVShows
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'List.Filter.TVShows'
    'id' = 1
    'params' = @{
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.tvshows
#################################################################
#################################################################
#################################################################
#Returns a list all movies and their ID's
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'VideoLibrary.GetMovies'
    'id' = 6
    'params' = @{
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.movies
#################################################################
#################################################################
#################################################################
#Returns a list movie and movie ID
#required param ID
$username = $username
$pwd = $password
$hostname = $IPaddress
$port = '8080'
$secpwd = ConvertTo-SecureString $pwd -AsPlainText -Force
$data = @{
    'jsonrpc' = '2.0'
    'method' = 'VideoLibrary.GetMovieDetails'
    'id' = 6
    'params' = @{
        'movieid' = 2004
    }
}

$json = $data | ConvertTo-Json -Depth 100

$url = 'http://'+$hostname+':'+$port+'/jsonrpc'
$mycreds = New-Object System.Management.Automation.PSCredential ($username, $secpwd)
$webreq = Invoke-WebRequest -Uri $url -Credential $mycreds -Body $json  -ContentType application/json -Method POST -AllowUnencryptedAuthentication
$webreq
($webreq.content|convertfrom-json).result.moviedetails
#################################################################
#################################################################
#################################################################

