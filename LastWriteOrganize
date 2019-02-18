# this program creates a folder named with the current date
# Then moves a file with a specified extension (Ex: *.dwg) within the current directory (or specified directory)
# to the newly created current date named folder

# sets location for directory in this case it is the current folder
# set for specific directory use format "anyDrive:\anyPath" - without quotes!
# replace (Get-Location).path with specified directory
$currentDirectory = (Get-Location).path

# file extension to search for
$extension = '*.dwg'


# search through each file in the specified directory with the specified extension
Get-ChildItem $currentDirectory\$extension -Recurse | foreach { 
$lastWrite = $_.LastWriteTime.ToShortDateString()
# create a new folder based on found last write date
$newFolderName = Get-Date $lastWrite -Format yyyy-MM-dd
$destination = "$currentDirectory\$newFolderName"

if (test-path $destination){ 
    move-item $_.fullname $destination 
    } else {
    new-item -ItemType directory -Path $destination
    move-item $_.fullname $destination 
    }
}
