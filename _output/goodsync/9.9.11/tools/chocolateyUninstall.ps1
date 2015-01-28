$packageName = 'goodsync'
$installerType = 'EXE'
$silentArgs = '/S'
$unpath = "$Env:ProgramFiles\Siber Systems\GoodSync\un-GoodSync.exe"
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
  
	Uninstall-ChocolateyPackage $packageName $installerType $silentArgs $unpath -validExitCodes $validExitCodes
    
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}