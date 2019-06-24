# Environment Provisioning and DevOps Setup using Vagrant & Ansible

Vagrant provides abiltiy to create VM via a simple script file, Vagrantfile, wherein we define the configuration details for the virtual machine that we want to create. Vagrant also integrates with ansible very well and facilitates the execution of ansible playbooks from the vagrant script. Hence, once the environment provisioning in completed, vagrant invokes ansible playbooks to install and configure the desired tool stack identified in roles.

Currently as part of this automation, we setup the below mentioned  tools 
1. Git
2. Java
3. Jenkins
4. Sonarqube
5. Nexus
6. Tomcat

While the VM is running, jenkins will be available on localhost:8080.

### Setup

Simply clone this repository and `cd` into the directory. Make sure you have [Vagrant][vagrant] and [VirtualBox][virtualbox] installed, and the `vagrant-vbguest` plugin is available. Then run `vagrant up`.

```bash
$ cd path/to/repository
$ vagrant plugin install vagrant-vbguest
$ vagrant up
```

[Vagrant]: https://www.vagrantup.com
[virtualbox]: https://www.virtualbox.org

### Jenkins Persistence

Jenkins will persist to the filesystem, which is setup as a shared folder named `jenkins_home`. You can safely destroy the virtual machine without losing any of your work inside jenkins.
