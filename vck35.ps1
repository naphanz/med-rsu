Start-Sleep -Seconds 10

Start-Process "C:\Users\kaopu\Desktop\MinimizeToTray\MinimizeToTray.exe" -WorkingDirectory "C:\Users\kaopu\Desktop\MinimizeToTray"
Start-Sleep -Seconds 3

Start-Process "C:\Program Files\obs-studio\bin\64bit\obs64.exe" -WorkingDirectory "C:\Program Files\obs-studio\bin\64bit"
Start-Sleep -Seconds 5

# Send Alt+F1 directly to OBS Studio
$wshell = New-Object -ComObject WScript.Shell
$wshell.AppActivate("OBS Studio")
Start-Sleep -Milliseconds 500
$wshell.SendKeys('%{F1}')
