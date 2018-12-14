# gc-cloud-nginx

Create a lightweight portable nginx server using Virtualbox, Vagrant, Ansible and Docker.
We use ``vagrant`` to launch a virtual machine on the host machine using ``Virtualbox``.
``vagrant`` also uses ``ansible`` as a provisioner to deploy ``nginx`` as a ``docker`` container.

## Installation

For the simplicity of the project we need to have Virtualbox and Vagrant installed.
As developer machines are mostly run on mac the following steps are for OSX installation

To install ``virtualbox`` run the following from terminal
```bash
$ brew cask install virtualbox
```

Install ``Vagrant`` from the vagrant website or use homebrew command as below
```bash
$ brew cask install vagrant
```


### Restart Virtual box
Its better to restart the virtualbox install, as it avoids vagrant networking issues
On MacOSX
```bash
sudo "/Library/Application Support/VirtualBox/LaunchDaemons/VirtualBoxStartup.sh" restart
```
On Linux 
```bash
sudo modprobe vboxnetadp
```

## Clone the Git project
```bash
git clone https://github.com/glitsun/gc-cloud-nginx.git
```
Change directory to the app folder
```bash
cd gc-cloud-app
```

## Usage
Once the ``Virtualbox`` and ``Vagrant`` are ready we can use the following set of commands in the cloned project folder

### Start the vagrant box
To spin-up vagrant box and run the provisioner, use the following command
```bash
vagrant up
```
### Run only the provisioner on vagrant box
Most of the time you don't need to restart the vagrant virtual machine. 
As the virtual machine is already running for any app specific changes we can just rerun the 
provisioner using vagrant hence reducing the time to launch a virtual machine
```bash
vagrant provision
```
### Shell access to vagrant box
To access the shell of the running vagrant box use the below command
```bash
vagrant ssh
```

### Stop vagrant box
To stop the vagrant box, use the following command
```bash
vagrant halt
```

### Remove vagrant box
To remove the vagrant box, use the following command. Note the entire box will be removed from virtual box
```bash
vagrant destroy
```