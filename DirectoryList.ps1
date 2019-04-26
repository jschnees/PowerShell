# lists the contents of the folder and sub folders
ls -r | % { $_.FullName + $(if($_.PsIsContainer){'\'}) } > filelist.txt