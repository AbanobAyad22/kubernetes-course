# 1. Generate Basic Authentication Credentials
# First, you need to create a username and password for basic authentication. 
# You can use the htpasswd utility to generate the necessary credentials.

# Install htpasswd Utility
sudo apt-get install apache2-utils

# Generate the Password File
htpasswd -c auth abanoub
# This command will prompt you to enter a password for user1. The -c flag creates a new file. 
# To add more users, omit the -c flag and run the command again.

# `2. Create a Kubernetes Secret
# Create a Kubernetes Secret to store the generated authentication credentials:`
kubectl create secret generic basic-auth-secret --from-file=auth

# Here, basic-auth-secret is the name of the Secret, and auth is the file containing your credentials.