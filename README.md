# splunk-bots-docker
Minimal bash script and compose file to deploy standalone Splunk instance with the BoTSv3 dataset + required apps

# Set the configuration and environment
The docker-compose.yml file will pull the Splunk 8.0.2.1 image from Docker hub. In order to succesfully 
set up the BoTSv3 dataset a list of apps have to be pre-installed. The apps.conf file contains an updated
list of the required apps and can be extended with any app you prefer.

Running `source deploy.sh all` will set the environment variables for Docker and pull the latest dataset. After this is completed,
run `docker-compose up -d` to start the environment. This may take some time though, Splunk will download each individual app before starting :) 
