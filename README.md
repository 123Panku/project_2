Project Name: DevOps Infra + App Automation on AWS

Planning :

>>Provision infrastructure on AWS using Terraform

>>Configure the server using Ansible

>>Automate deployment using Jenkins

>>Store all code in GitHub

------------------------------------------------------------------------------

Pankaja K M@DESKTOP-PAL35F5 MINGW64 ~/Desktop/My_Project/Day_4 (master)
$ ssh-keygen -y -f "C:/Users/Pankaja K M/Downloads/key11.pem" > "C:/Users/Pankaja K M/Downloads/key11.pub"

✅ You're in! Great job troubleshooting.

🔑 Summary of what happened:
You were trying to SSH using the wrong username: ubuntu

But your EC2 instance is running Amazon Linux 2, which uses the default user ec2-user

Once you switched to:

bash

ssh -i ~/.ssh/key11.pem -o IdentitiesOnly=yes ec2-user@44.201.212.220

🔓 The key was accepted and login succeeded.

✅ Quick Notes for Future Reference
AMI Type	Default SSH Username
Amazon Linux 2	ec2-user
Ubuntu	ubuntu
CentOS	centos
RHEL	ec2-user
Debian	admin or debian