#!/bin/bash

################################################################################################
################################################################################################
################################################################################################
#			                        SET HOSTNAME
################################################################################################
#				                       version 2.0
################################################################################################
#				                 created by: James White
#				                       	CIDSE
#				                Arizona State University
#				              last updated January 8,2019
################################################################################################
#
# Place this script on your local system or llash drive. On launch, it will download it will:
#    Set the Hostname
#    Update Jamf
#    Launch Safari, and go to https://orchard.asu.edu:8443/enroll
#
############################################################################################

cd /tmp

wget https://raw.githubusercontent.com/jamesawhiteiii/cidse-ubuntu/master/provisioning/firstlogin_live.sh

sh /tmp/https://raw.githubusercontent.com/jamesawhiteiii/cidse-ubuntu/master/provisioning/firstlogin_live.sh

exit 0
