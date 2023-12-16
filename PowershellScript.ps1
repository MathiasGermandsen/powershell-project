$desktopPath = [System.IO.Path]::Combine($env:USERPROFILE, 'Desktop')
$destinationPath = [System.IO.Path]::Combine($desktopPath, 'putty.exe')
$puttyUrl = "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe"
Invoke-WebRequest -Uri $puttyUrl -OutFile $destinationPath
Write-Host (if (Test-Path $destinationPath) {"Putty.exe downloaded successfully to $destinationPath"} else {"Failed to download Putty.exe"})