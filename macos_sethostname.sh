#!/bin/bash

################################################################################################
################################################################################################
################################################################################################
#			                Install ALL COMMON PRINTER PRINTERS
################################################################################################
#				                       version 2.0
################################################################################################
#				                 created by: James White
#				                       	CIDSE
#				                Arizona State University
#				              last updated January 8,2019
################################################################################################
################################################################################################

###functions
function machinename () {
osascript <<EOT
tell application "Finder"
activate
set nameentry to text returned of (display dialog "Please Input New Computer Name" default answer "" with icon 2)
end tell
EOT
}

function renameComputer(){
#Set New Computer Name
echo "The hostname will be set to: $ComputerName"
scutil --set HostName $ComputerName
scutil --set LocalHostName $ComputerName
scutil --set ComputerName $ComputerName

echo Rename Successful
}
echo "Redirecting to Jamf Pro Server"

###Script
ComputerName=$(machinename)
renameComputer
exit 0
