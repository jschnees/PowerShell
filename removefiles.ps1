Get-ChildItem -Path 'C:\PATH' *.png | foreach { Remove-Item -Path $_.FullName }

Get-ChildItem -Path 'C:\PATH' *.pcp | foreach { Remove-Item -Path $_.FullName }

Get-ChildItem -Path 'C:\PATH' *.jpg | foreach { Remove-Item -Path $_.FullName }
