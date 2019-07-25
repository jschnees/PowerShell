Get-ChildItem -Path 'Q:\projects\2019\19073 (MA) Doctors 1st Floor Restrooms and Main Entry Doors\00 - IN\2019-07-18 Revit\CAD' *.png | foreach { Remove-Item -Path $_.FullName }

Get-ChildItem -Path 'Q:\projects\2019\19073 (MA) Doctors 1st Floor Restrooms and Main Entry Doors\00 - IN\2019-07-18 Revit\CAD' *.pcp | foreach { Remove-Item -Path $_.FullName }

Get-ChildItem -Path 'Q:\projects\2019\19073 (MA) Doctors 1st Floor Restrooms and Main Entry Doors\00 - IN\2019-07-18 Revit\CAD' *.jpg | foreach { Remove-Item -Path $_.FullName }