Project Name: DevOps Infra + App Automation on AWS

Planning :

>>Provision infrastructure on AWS using Terraform

>>Configure the server using Ansible

>>Automate deployment using Jenkins

>>Store all code in GitHub

------------------------------------------------------------------------------
✅ Step-by-Step Instructions After terraform apply
🔁 Step 1: Confirm Instance Creation
After running:

bash
Copy
Edit
cd terraform/
terraform apply -auto-approve
✅ Check output:

You should see the public IP of the EC2 instance printed.

Terraform will also update your Ansible inventory file (if you used local-exec to write IP to inventory.ini).

Example:

makefile
Copy
Edit
Apply complete! Resources: 1 added.
Outputs:

instance_ip = "18.214.22.137"
📁 Step 2: Check or Update Ansible Inventory
Go to the Ansible folder and open inventory.ini:

ini
Copy
Edit
[web]
18.214.22.137 ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa
✅ Ensure:

ansible_user=ubuntu (for Ubuntu AMI)

You have access to the private key (~/.ssh/id_rsa)

The IP matches your EC2 instance

🧪 Step 3: Test SSH Access (Optional Debugging)
You can test SSH access from your terminal:

bash
Copy
Edit
ssh -i ~/.ssh/id_rsa ubuntu@18.214.22.137
If this works, you’re ready to use Ansible.

▶️ Step 4: Run Ansible Playbook
From the ansible/ directory, run:

bash
Copy
Edit
ansible-playbook -i inventory.ini playbook.yml
✅ What it does:

Installs Apache

Starts and enables the Apache service

Writes a sample HTML file to /var/www/html/index.html

🌐 Step 5: Access Your Web Server
Open a browser

Go to http://<EC2-Public-IP>

You should see:

html
Copy
Edit
<h1>Hello from Ansible Web Server!</h1>
⚙️ Step 6: Automate via Jenkins
If Jenkins is set up:

Open Jenkins dashboard

Create a Pipeline Job

Point it to your GitHub repo

Paste the Jenkinsfile into the pipeline script

Click Build Now

✅ Jenkins will:

Clone your repo

Run Terraform

Run Ansible

Deploy and configure your server

🧼 Optional: Cleanup
To destroy the infrastructure:

bash
Copy
Edit
cd terraform/
terraform destroy -auto-approve
🚀 Recap Workflow
text
Copy
Edit
1. terraform apply → creates EC2 + writes inventory
2. ansible-playbook → configures EC2 (Apache, index.html)
3. Browser access → verify deployment
4. Jenkins → automates steps via CI/CD
