## Organizes files based on file name
## Creates a folder based of file name then moves said file with same name into the folder
$sourceFolder = 
Get-ChildItem $sourceFolder -Filter *.DWG | Where-Object {!$_.PSIsContainer} | Foreach-Object{

    $dest = Join-Path $_.DirectoryName $_.BaseName.Split()[0]

    if(!(Test-Path -Path $dest -PathType Container))
    {
        $null = md $dest
    }

    $_ | Move-Item -Destination $dest -Force
}
