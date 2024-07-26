# Spotify-Terraform

## Project Overview

This project involves using Terraform to create multiple Spotify playlists for different occasions like morning, evening, party night, etc. Terraform will be used to automate the creation and management of these playlists.

## Prerequisites

1. **Terraform Installed**: Ensure Terraform is installed on your machine.
2. **Docker Installed**: Make sure Docker is installed and running.
3. **Spotify Account**: You need a Spotify account (without premium access)
4. **Spotify Developer Account**: Register and create an application to get the Client ID and Client Secret.
5. **Spotify Provider for Terraform**: Install and configure the Spotify provider for Terraform.
6. **VS Code Editor**: Recommended for editing Terraform files.

# Steps to complete the project

**1. Creating Terraform Code and defining Provider**  
  create one file named provider.tf  
  For the provider, search for providers terraform in browser then go to first link and search for spotify and choose first provider   

  ![alt text](Images/1.png)


 to use the provider, click on use provider option  

 ![alt text](Images/2.png) 

copy the code & paste in vs code under provider.tf  

![alt text](Images/3.png)

**2. Create an app**  
To interact with Spotify's API, you need a Client ID and Client Secret.  

go to Spotify Developer Dashboard. Login with your spotify acccount  

![alt text](Images/4.png)  

After logging in, go back and click on account to go to dashboard.

![alt text](Images/5.png)   

click on checkbox and accept the terms.  
we have to create an app then click on create app.
![alt text](Images/6.png)

fill the details name, description  
Redirect URIs: http://localhost:27228/spotify_callback  
 then click on chechbox and save  
 ![alt text](Images/7.png)
 ![alt text](Images/8.png)  
To get Client id and Client secret > Settings > Client ID (Copy the ID) and click on view client secret to get client secret 
 ![alt text](Images/9.png)
Create a file .env then paste here the id and secret

**3. Run the Spotify Auth App and Get the API Key**  
Make sure Docker Desktop is running and run the docker container > docker run -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
you'll get a link then click on that link, agree and you'll get msg as authorization successful

![alt text](Images/10.png)  

![alt text](Images/11.png)
![alt text](Images/12.png)
![alt text](Images/13.png)  

#. Now on vs code, get the api key from terminal and put in .tfvars file  
(it is not recommended to put direct in provider.tf or variables.tf file so create one terraform.tfvars file and paste in there)  

**4. Terraform Initialization**
#. we want our container to continue to running so open new terminal and write > terraform init
![alt text](Images/14.png)  

we're ready to create our playlist
create one file as playlist.tf , in the file define resource and name of playlist
and add tracks by searching a song in spotify and copy the id
![alt text](Images/15.png)

now run terraform plan command after that we can see details of the track.  

![alt text](Images/16.png)  

then "terraform apply -auto-approve"  
![alt text](Images/17.png)

Check for the playlist in spotify  
![alt text](Images/18.png)

to play/add a song, everytime we need to put a id instead we can use data block in terraform
we are creating another playlist in playlists.tf.  
There we can create data block and add one singer album and add tracks as many as we want; also we can set limit.
After this Again run the terraform plan and apply commands.
![alt text](Images/19.png)
![alt text](Images/20.png)

Check for playlist in Spotify  
![alt text](Images/21.png)

## Conclusion

By following these steps, you can automate the creation and management of multiple Spotify playlists using Terraform. This approach not only saves time but also ensures consistency across your playlists. Customize the playlists and tracks as per your preference to suit different occasions.
