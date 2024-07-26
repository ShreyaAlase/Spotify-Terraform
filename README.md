# Spotify-Terraform

install terraform = terraform/io/downloads
install docker

create one folder and open in vs code
create one file, provider.tf
for the provider, search for providers terraform , go to first link, search for spotify and choose first provider and to use the provider, click on use provider option and copy the code & paste in vs code under provider.tf

we need api key and along with api key, we need client id and client secret
go to spotify developer dashboard and create an account and login then go to dashboard
click on checkbox and accept the terms
we have to create an app then click on create app
fill the details name, description and link: then click on chechbox and save then click on settings and get id and secret
will store this in file .env then paste here the id and secret

now run the docker container > docker run -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
you'll get a link then click on that link, agree and you'll get msg as authorization successful

put the api key in .tfvars file

we want our container to continue to running so open new terminal and write > terraform init

we're ready to create our playlist
create one file as playlist.tf
