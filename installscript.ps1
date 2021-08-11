##Starting installation process for prerequsites##
$Date=get-date -format "MM.dd.yyyy"
$Outputfile= "${Date}_ProMark.txt"

Start-Transcript -Path C:\transcripts\$Outputfile

##Installing prerequisites for ProMark Client

##Installing Microsoft Visual C++ 2010 x86 Redistributable##

Write-Host "Installing Microsoft Visual C++ 2010 x86 Redistributable"


Start-Process -filepath "C:\temp\vcredist_x86.exe" -Wait -ErrorAction Stop -ArgumentList '/q' 

Write-Host "Done Installing Microsoft Visual C++ 2010 x86 Redistributable"
##Installing Microsoft Visual C++ 2015-2019 x86 Redistributable##

Write-Host "Installing Microsoft Visual C++ 2015-2019 x86 Redistributable"

Start-Process -filepath "C:\temp\vc_redist.x86.exe" -Wait -ErrorAction Stop -ArgumentList '/quiet'

Write-Host "Done Installing Microsoft Visual C++ 2015-2019 x86 Redistributable"

##Installing SAP Crystal Reports Runtime ##

Write-Host "Installing SAP Crystal Reports Runtime"

Start-Process -filepath "C:\temp\CRRuntime_32bit_13_0_5.msi" -Wait -ErrorAction Stop -ArgumentList '/quiet'

Write-Host "Done Installing SAP Crystal Reports Runtime"

Write-Host "Done Installing prerequisites"
