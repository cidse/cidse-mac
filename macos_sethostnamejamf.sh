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
#Contact Jamf Server, send updated records
jamf recon
echo Rename Successful
}

###Script
ComputerName=$(machinename)
renameComputer

###Launch orchard.asu.edu in browser
echo "********************************************"
echo "***    Redirecting to Jamf Pro Server    ***"
echo "********************************************"
sleep 3
open -a "Safari" https://orchard.asu.edu:8443/enroll/

exit 0
