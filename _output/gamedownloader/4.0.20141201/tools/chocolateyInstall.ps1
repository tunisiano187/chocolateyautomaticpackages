﻿$packageName = 'gamedownloader'
$installerType = 'EXE'
$url = 'http://cznic.dl.sourceforge.net/project/dev-fire-gd/Game Downloader 4.0/Game Downloader 4.0 Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}