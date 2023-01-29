# Ansible-Master-installation-and-node-configuration

On your local system, make sure you have installed both VirtualBox and Vagrant using any package manager such as Chocolatey for Windows, Brew for Mac etc before you run the command.

To login to your master after deploying and configutation of both master and nodes, run the command;
vagrant ssh master

To run the ansible ping module using ad-hoc;
ansible all -m ping -i inventory.ini
