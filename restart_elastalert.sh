#!/bin/bash
# The script runs via a cronjob every night at 11pm
# The script should be saved in /usr/local/bin/ and owns by root for security purpose
# Important commands to run one times before starting the script:
    #chmod +x /usr/local/bin/restart_elastalert.sh
    #sudo su
    #chown root /usr/local/bin/restart_elastalert.sh
# grep the service status of elastalert.service
systemctl status elastalert.service | grep 'active (running)' > /dev/null 2>&1
# if they service is not running = then
# if the service is running = then
if [ $? != 0 ]
    then
        # restarts the elastalert.service without any output
        sudo systemctl restart elastalert.service > /dev/null
    else
        # restarts the elastalert.service without any output
        sudo systemctl restart elastalert.service > /dev/null
fi
