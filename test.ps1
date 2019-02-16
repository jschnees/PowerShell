# this program creates a folder named with the current date
# Then moves a file with a specified extension (Ex: *.dwg) within the current directory (or specified directory)
# to the newly created current date named folder

# set variable for current folder
# set for specific directory use format "anyDrive:\anyPath" - without quotes!
# replace (Get-Location).path with specified directory
$currentDirectory = (Get-Location).path

# get the current date
$CurrentDate = (Get-Date)

# file extension to search for and move
$FindExtension = *.dwg

# Checks to see if a current date folder exists. If not then create one.
if (Test-Path $CurrentDate) {
    throw "File already exists."
} else {
    # create a new folder based on current date
    $destination = New-Item -ItemType Directory -Path ".\$((Get-Date).ToString('yyyy-MM-dd'))"
}

# Checks to see if new current date folder is created then move the files to the newly created directory
if (Test-Path $destination in $currentDirectory) {
    throw "Folder Not Found"
} else {
    foreach ($FindExtension in $currentDirectory){
        # move specified file type to newly created folder
        move-item -path .$FindExtension -destination $destination –confirm
    }
}
