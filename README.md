# docker-ansible-deploy

This is a base docker configuration for deploying via an Ansible playbook. 


The following changes need to be made for deployment:

1. Change the target ansible role git repo. (Line 17)
2. Set target Ansible playbook to run. (Line 22)
3. Configure EXPOSE and ENTRYPOINT. (Lines 24-25)
