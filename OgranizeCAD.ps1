# 1. Get a list of files in the d:\queries folder
$FileList = Get-ChildItem -Path d:\queries;

# 2. Parse file names, create folder structure, and move files
foreach ($File in $FileList) {
    $File.Name -match '(?<folder>.*?)(?:_)(?<subfolder>\w{2})(?:_)(?<filename>.*)';
    if ($matches) {
        $Destination = 'd:\queries\{0}\{1}\{2}' -f $matches.folder, $matches.subfolder, $matches.filename;
        mkdir -Path (Split-Path -Path $Destination -Parent) -ErrorAction SilentlyContinue;
        Move-Item -Path $File.FullName -Destination $Destination -WhatIf;
    }
    $matches = $null
}
