# Repository Structure
This repository contains files and directories for deploying AWS Stacks using CloudFormation and deploying a WordPress site inside EC2 instances that are created by CloudFormation using Ansible.

```
repository
├── ansible
│   ├── ansible.cfg
│   ├── inventory.ini
│   ├── wordpress.yml
│   └── wp-configs.php.j2
├── cloudformation
│   └── cloudformation.yml
├── github
│   └── workflows
│       └── cloudformation.yml
│       └── ansible.yml
└── README.md


```

## ansible folder
The ansible directory contains Ansible playbooks and configuration files for configuring the WordPress site on the EC2 instances that are created by CloudFormation. Here's what each file does:

- `ansible.cfg`: This is the Ansible configuration file that specifies various settings such as the location of inventory and roles directories.
- `inventory.ini`: This is the Ansible inventory file that specifies the hosts on which Ansible should run the playbooks.
- `wordpress.yml`: This is the Ansible playbook that configures the WordPress site on the EC2 instances.
- `wp-configs.php.j2`: This is the Jinja2 template file for the wp-config.php file, which is used to configure the WordPress site's database connection settings.

## cloudformation Folder
The cloudformation directory contains the CloudFormation template file for creating the EC2 instances on which the WordPress site will run. Here's what the file does:

- `cloudformation.yml`: This is the CloudFormation template file that creates the EC2 instances and associated resources needed to run the WordPress site. It also launches a user data script on the instances that installs Ansible and runs the wordpress.yml playbook to configure the WordPress site.

## github/workflows Forder
The .github/workflows directory contains GitHub Actions workflows for automatically deploying the AWS Stack and the WordPress site whenever a commit is made to the repository. Here's what each file does:

- `ansible.yml`: This is the GitHub Actions workflow file that runs the wordpress.yml Ansible playbook on the EC2 instances after they are created by CloudFormation.
- `cloudformation.yml`: This is the GitHub Actions workflow file that creates the AWS Stack using the cloudformation.yml template file whenever a commit is made to the main branch.

## README.md
This file contains the documentation for the repository's contents, including explanations of each file's function.

I hope this helps you understand the purpose of each file in your repository! Let me know if you have any questions.