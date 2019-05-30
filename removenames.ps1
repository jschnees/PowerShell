# This is a Powershell script to remove specifc names from the filename of PDF prints.
# Run the script by right-clicking and selecting "Run with PowerShell".
# If the script is not working, Powershell may need a permissions adjustment.
# To do this, open Powershell and enter the following:
# set-executionpolicy remotesigned
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Model", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Layout1", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Layout", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Power", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Lighting", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Schedules", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Legend", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Demo", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Plan", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Site", "") }
$i=1
While ($i -le 2)
    {
        $i
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EE", "E") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HH", "H") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PP", "P") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E01", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E02", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H01", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H02", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P01", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P02", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("FPFP", "FP") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EUnits", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Units", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HUnits", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Units", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PUnits", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Units", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HClubhouse", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EClubhouse", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PClubhouse", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PBuilding", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HBuilding", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EBuilding", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace(" ", "") }
        get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("--", "") }
        $i++
    }