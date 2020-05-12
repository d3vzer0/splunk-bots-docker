# splunk-bots-docker
Minimal bash script and compose file to deploy standalone Splunk instance with the BoTSv3 dataset + required apps

# Set the configuration and environment
The docker-compose.yml file will pull the Splunk 8.0.3 image from Docker hub. The apps.conf file contains an updated
list of the required apps which will be installed on deployment. This also includes the app containing the Splunk BoTSv3 dataset and any additional app to your liking. 

Running `source deploy.sh all` will set the environment variables for Docker. After this is completed,
run `docker-compose up -d` to start the environment. This may take some time though, Splunk will download each individual app before starting :) 


## Note
The original list of required apps contain references to app versions that no longer exist on Splunkbase. This repo contains an updated
list with apps (apps.conf) pointing to the 'closest' available version. Not guarantees that this will work 100% in all usecases though.
