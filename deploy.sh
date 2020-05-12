#!/bin/bash

echo "Setting the environment variables for the docker-compose file..."
echo 

APPLIST="apps.conf"

# Read apps.conf and set the environment variable as a single line
# comma seperated list to install all the apps
set_app_list ()
{
    APPJOINED=`cat ${APPLIST} |tr '\n' ',' |sed 's/,$//'`
    export SPLUNK_APPS_URL=${APPJOINED}
    echo "Configured the list of apps to be installed."
    echo
}

# Read the Splunkbase username/password to download the apps
set_splunkbase_credentials ()
{
    echo -n "Splunkbase username: " 
    read splunkbase_user
    export SPLUNKBASE_USERNAME=${splunkbase_user}
    echo

    echo -n "Splunkbase Password: " 
    read -s splunkbase_pass
    export SPLUNKBASE_PASSWORD=${splunkbase_pass}
    echo
}

# Set the Splunk admin password during deployment
set_splunk_password ()
{
    echo -n "Splunk Password: " 
    read -s splunk_pass
    export SPLUNK_PASSWORD=${splunk_pass}
    echo
}

case "$1" in
    apps)
        set_app_list
        ;;
    splunkbase)
        set_splunkbase_credentials
        ;;
    password)
        set_splunk_password
        ;;
    all)
        set_app_list
        set_splunkbase_credentials
        set_splunk_password
        ;;
esac

echo "Environment set. Run 'docker-compose up -d' to start Splunk"
echo 

