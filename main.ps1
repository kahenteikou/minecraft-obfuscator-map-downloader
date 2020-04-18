param(
    [string] $vername,
    [string] $outfoldername
)
$jsondata=Get-Content $env:APPDATA\.minecraft\versions\$vername\$vername.json -Encoding UTF8 -Raw | ConvertFrom-Json
$clienturl_data=$jsondata.downloads.client_mappings.url
$serverurl_data=$jsondata.downloads.server_mappings.url
Invoke-WebRequest -Uri $clienturl_data -outfile $outfoldername"\"$vername-client.txt
Invoke-WebRequest -Uri $serverurl_data -outfile $outfoldername"\"$vername-server.txt
Write-Host "Success"