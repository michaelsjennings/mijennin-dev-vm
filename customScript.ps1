# Disable Server Manager
Get-ScheduledTask -TaskName ServerManager | Disable-ScheduledTask -Verbose

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Software
choco install googlechrome -y
choco install git -y
choco install visualstudiocode -y
choco install sql-server-management-studio -y
choco install notepadplusplus -y
choco install fiddler -y
choco install postman -y
choco install 7zip -y

# Reboot
Restart-Computer
