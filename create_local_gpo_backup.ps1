$sourceUrl = "https://download.microsoft.com/download/8/5/c/85c25433-a1b0-4ffa-9429-7e023e7da8d8/LGPO.zip"
$downloadPath = "C:\temp\LGPO.zip"
$destinationPath = "C:\temp\Lgpo"


New-Item -ItemType Directory "c:\temp\Lgpo"
New-Item -ItemType Directory "c:\temp\Lgpo\Backup"

Invoke-WebRequest -Uri $sourceUrl -OutFile $downloadPath

Expand-Archive -LiteralPath $downloadPath -DestinationPath $destinationPath


cd C:\temp\Lgpo\LGPO_30

.\lgpo.exe /b c:\temp\Lgpo\Backup