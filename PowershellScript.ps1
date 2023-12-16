$desktopPath = [System.IO.Path]::Combine($env:USERPROFILE, 'Desktop')
$destinationPath = [System.IO.Path]::Combine($desktopPath, 'putty.exe')
$puttyUrl = "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe"
Invoke-WebRequest -Uri $puttyUrl -OutFile $destinationPath

# Check if the file was downloaded successfully
if (Test-Path $destinationPath) {
    $message = "Putty.exe downloaded successfully to $destinationPath"
} else {
    $message = "Failed to download Putty.exe"
}

# Print the message
Write-Host $message