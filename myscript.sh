#!/bin/bash

# Function to create a group in Google Cloud IAM
function create_group() {
    local group_name="$1"
    local description="$2"

    # Create the group
    gcloud iam groups create "$group_name" --description="$description"
}

# Function to create a user in Google Cloud IAM
function create_user() {
    local user_email="$1"
    local display_name="$2"
    local group_name="$3"

    # Create the user
    gcloud iam users create "$user_email" --display-name="$display_name"

    # Add the user to the group
    gcloud iam memberships add --group="$group_name" --member="user:$user_email"
}

# Main function
function main() {
    # Create a group
    create_group "my-group" "My Group Description"

    # Create a user and add to the group
    create_user "user@example.com" "John Doe" "my-group"
}

# Execute main function
main
