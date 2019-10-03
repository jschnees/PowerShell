# This is a Powershell script to remove specifc names from the filename of PDF prints.
# Run the script by right-clicking and selecting "Run with PowerShell".
# If the script is not working, Powershell may need a permissions adjustment.
# To do this, open Powershell and enter the following:
# set-executionpolicy remotesigned
# General
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Model", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Layout1", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Layout", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Schedules", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Demo", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Plan", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Site", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Legend", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("MEP-", "") }
# Electrical
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Power", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Lighting", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EUnits", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Units", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EClubhouse", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EBuilding", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Building", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Roof", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EBuilding", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Electrical", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-SingleLines-00", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("LowVoltage", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("-electrical", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("-lighting", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("-power", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Single Lines Color Combined-", "") }
# HVAC
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HVAC", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HUnits", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Units", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HClubhouse", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HBuilding", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Building", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Roof", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HRoof", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Shell", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Schedule", "") }
# Plumbing
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PUnits", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Units", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PClubhouse", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PBuilding", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Building", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Schedules and details-", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Roof", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-&Details", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Shell", "") }
$i=7
While ($i -le 7)
    {
        $i
# General
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Model", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Layout1", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Layout", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Schedules", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Demo", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Plan", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Site", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Legend", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace(" ", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("--", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("- -", "") }
# Electrical
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Power", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("Lighting", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EUnits", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EE", "E") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E00", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("-E", "E") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E1E", "E") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E01", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E02", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E03", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Units", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Shell", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EClubhouse", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EBuilding", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("E-Roof", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("ER", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("EBuilding", "") }
# HVAC
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HVAC", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("-H", "H") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HH", "H") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H01", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H02", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H0R", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HUnits", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Units", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HClubhouse", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("HBuilding", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("H-Roof", "") }

# Plumbing
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PUnits", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("-P", "P") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PP", "P") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P01", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P02", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Units", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PClubhouse", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PBuilding", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("P-Roof", "") }
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("PRoof", "") }
# Fire
    get-childitem *.pdf | foreach { rename-item $_ $_.Name.Replace("FPFP", "FP") }
$i++
    }