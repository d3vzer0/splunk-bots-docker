# splunk-bots-docker
Minimal bash script and compose file to deploy standalone Splunk instance with the BoTSv3 dataset + required apps

# Set the configuration and environment
The docker-compose.yml file will pull the Splunk 8.0.2.1 image from Docker hub. In order to succesfully 
set up the BoTSv3 dataset a list of apps have to be pre-installed. The apps.conf file contains an updated
list of the required apps, which also includes the app containing the Splunk BoTSv3 dataset.

Running `source deploy.sh all` will set the environment variables for Docker. After this is completed,
run `docker-compose up -d` to start the environment. This may take some time though, Splunk will download each individual app before starting :) 


## Note
Installing Splunk apps now require a valid splunk.com username/password. Credentials are prompted when using the deploy.sh file.
