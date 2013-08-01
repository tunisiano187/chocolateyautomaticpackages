﻿$packageName = '{{PackageName}}'
#$url = 'http://switch.dl.sourceforge.net/project/mousecontroller/MouseController_{version}.zip'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\MouseController.exe"

Install-ChocolateyDesktopLink $targetFilePath