$SourceFolder = "G:\queries\"
$targetFolder = "G:\queries\"

# Find all files matching *.sql in the folder specified
Get-ChildItem -Path $SourceFolder -Filter *.sql | ForEach-Object {

    # Combine the source filename and target directory
    # The source filename has all instances of _ replaced with \
    # Cast the resulting string to a FileInfo object to take advantage of extra methods
    [System.IO.FileInfo]$destination = (Join-Path -Path $targetFolder -ChildPath $_.Name.replace("_","\"))

    # Create the directory if it doesn't already exits
    if (!(Test-Path) $destination.Directory.FullName)
    { 
        New-item -Path $destination.Directory.FullName -ItemType Directory 
    }

    # Copy the source to the target directory
    copy-item -Path $_.FullName -Destination $Destination.FullName 
}
