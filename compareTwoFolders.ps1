$SourceDocs = Get-ChildItem –Path C:\Users\jschnees\Desktop\plots\DESKTOPCHAOS | foreach  {Get-FileHash –Path $_.FullName}

$DestDocs = Get-ChildItem –Path Q:\projects | foreach  {Get-FileHash –Path $_.FullName}

(Compare-Object -ReferenceObject $SourceDocs -DifferenceObject $DestDocs  -Property hash -PassThru).Path
