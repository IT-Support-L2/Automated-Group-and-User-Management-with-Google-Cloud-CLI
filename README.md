# Automated-Group-and-User-Management-with-Google-Cloud-CLI
Automated Group and User Management with Google Cloud CLI and Bash

The create_group function takes the group name and description as parameters and creates a new group within Google Cloud IAM using the gcloud iam groups create command.
    The create_user function takes the user email, display name, and group name as parameters and creates a new user within Google Cloud IAM using the gcloud iam users create command. It then adds the user to the specified group using the gcloud iam memberships add command.
    The main function is where you can call the group and user creation functions with the desired parameters.

Before running this script, make sure you have installed and authenticated the Google Cloud CLI (gcloud). Also, ensure that you have the necessary permissions to create groups and users within Google Cloud IAM.
