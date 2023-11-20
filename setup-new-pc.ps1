# Boxstarter Script

# Updating Windows and system settings
Update-Boxstarter
Install-WindowsUpdate -acceptEula

# Installing Applications
choco install googlechrome -y
choco install firefox -y
choco install vscode -y
choco install git -y
choco install python -y # This will install the latest Python 3
choco install 7zip -y
choco install filezilla -y
choco install nvm -y
choco install putty -y

# Installing specific Node.js versions using NVM
nvm install lts
nvm use lts
nvm install 12.14.1
nvm use 12.14.1

# Adding NVM Node.js path to system environment variables
$envPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
$nvmPath = "C:\Program Files\nodejs"
$newPath = "$envPath;$nvmPath"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")
