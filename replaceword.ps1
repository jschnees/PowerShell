# This script opens a specific directory and replaces a found word in a  *.doc file
$folderPath = "C:\Users\jschnees\Desktop\plots" # multi-folders: "C:\fso1*", "C:\fso2*"
$fileType = "*.doc"           # *.doc will take all .doc* files

$textToReplace = @{
# "TextToFind" = "TextToReplaceWith"
"02/11/19" = "01/01/01"
}

$word = New-Object -ComObject Word.Application
$word.Visible = $false

#region Find/Replace parameters
$matchCase = $true
$matchWholeWord = $true
$matchWildcards = $false
$matchSoundsLike = $false
$matchAllWordForms = $false
$forward = $true
$findWrap = [Microsoft.Office.Interop.Word.WdFindWrap]::wdFindContinue
$format = $false
$replace = [Microsoft.Office.Interop.Word.WdReplace]::wdReplaceOne
#endregion

$countf = 0 #count files
$countr = 0 #count replacements per file
$counta = 0 #count all replacements

Function findAndReplace($objFind, $FindText, $ReplaceWith) {
    #simple Find and Replace to execute on a Find object
    #we let the function return (True/False) to count the replacements
    $objFind.Execute($FindText, $matchCase, $matchWholeWord, $matchWildCards, $matchSoundsLike, $matchAllWordForms,
                     $forward, $findWrap, $format, $ReplaceWith, $replace) #> $null
}

Function findAndReplaceAll($objFind, $FindText, $ReplaceWith) {
    #make sure we replace all occurrences (while we find a match)
    $count = 0
    $count += findAndReplace $objFind $FindText $ReplaceWith
    While ($objFind.Found) {
        $count += findAndReplace $objFind $FindText $ReplaceWith
    }
    return $count
}

Function findAndReplaceMultiple($objFind, $lookupTable) {
    #apply multiple Find and Replace on the same Find object
    $count = 0
    $lookupTable.GetEnumerator() | ForEach-Object {
        $count += findAndReplaceAll $objFind $_.Key $_.Value
    }
    return $count
}

Function findAndReplaceWholeDoc($Document, $lookupTable) {
    $count = 0
    # Loop through each StoryRange
    ForEach ($storyRge in $Document.StoryRanges) {
        Do {
            $count += findAndReplaceMultiple $storyRge.Find $lookupTable
            #check for linked Ranges
            $storyRge = $storyRge.NextStoryRange
        } Until (!$storyRge) #null is False

    }
    #region Loop through Shapes within Headers and Footers
    # https://msdn.microsoft.com/en-us/vba/word-vba/articles/shapes-object-word
    # "The Count property for this collection in a document returns the number of items in the main story only.
    #  To count the shapes in all the headers and footers, use the Shapes collection with any HeaderFooter object."
    # Hence the .Sections.Item(1).Headers.Item(1) which should be able to collect all Shapes, without the need
    # for looping through each Section.
    #endregion
    $shapes = $Document.Sections.Item(1).Headers.Item(1).Shapes
    If ($shapes.Count) {
        #ForEach ($shape in $shapes | Where {$_.TextFrame.HasText -eq -1}) {
        ForEach ($shape in $shapes | Where {[bool]$_.TextFrame.HasText}) {
            #Write-Host $($shape.TextFrame.HasText)
            $count += findAndReplaceMultiple $shape.TextFrame.TextRange.Find $lookupTable
        }
    }
    return $count
}

Function processDoc {
    $doc = $word.Documents.Open($_.FullName)
    $count = findAndReplaceWholeDoc $doc $textToReplace
    $doc.Close([ref]$true)
    return $count
}

$sw = [Diagnostics.Stopwatch]::StartNew()
Get-ChildItem -Path $folderPath -Recurse -Filter $fileType | ForEach-Object { 
  Write-Host "Processing \`"$($_.Name)\`"..."
  $countr = processDoc
  Write-Host "$countr replacements made."
  $counta += $countr
  $countf++
}
$sw.Stop()
$elapsed = $sw.Elapsed.toString()
Write-Host "`nDone. $countf files processed in $elapsed"
Write-Host "$counta replacements made in total."

$word.Quit()
$word = $null
[gc]::collect() 
[gc]::WaitForPendingFinalizers()