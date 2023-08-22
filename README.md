# Terraform-AWS_EC2
How to Create EC2 Instance using Terraform

- Installation of Terraform: We'll start by explaining how to install Terraform on your machine. You'll learn where to download it and how to set it up for first-time use.

- Creating a PEM File using "tls_private_key": We'll walk you through the process of generating a PEM (Privacy-Enhanced Mail) file, which is required for SSH access to your EC2 instance. We'll demonstrate how to use the "tls_private_key" resource in Terraform to create the PEM file securely.

- Creating a Key Pair using "aws_key_pair": We'll show you how to create an AWS key pair using the "aws_key_pair" resource in Terraform. This key pair will be used to authenticate your SSH connection to the EC2 instance.

- Saving the PEM File Locally using "local_file": We'll demonstrate how to save the generated PEM file locally on your machine using the "local_file" resource in Terraform. This step ensures that you have the necessary credentials for SSH access.

- Creating a Security Group using "aws_security_group": We'll guide you through the process of creating a security group using the "aws_security_group" resource in Terraform. This security group will define the inbound and outbound rules for your EC2 instance. We'll focus specifically on opening port 22 for SSH access.

- Connecting to the EC2 Instance using SSH: Finally, we'll show you how to connect to your newly created EC2 instance using SSH. We'll demonstrate the necessary commands and configurations to establish a secure SSH connection to your instance.
