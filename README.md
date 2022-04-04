# ElastAlert service restart script
Simple bash script to restart the ElastAlert service every night, to prevent disabling rules.

## Prequirements
The script runs via cronjob every night at 11pm. It should be saved in following path '/usr/local/bin' and owns by root for security purpose.
Important commands to run one times before stating the script:
```bash
chmod +x /usr/local/bin/restart_elastalert.sh
sudo su
chown root /usr/local/bin/restart_elastalert.sh
```

## Edit crontab
Important is, to edit the root crontab table, not the user.
```bash
sudo su
crontab -e
```

add following line:
```bash
00 23 * * * /usr/local/bin/restart_elastalert.sh > /dev/null
```
