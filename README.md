# GSA 18F Stack

## Install Environment:

<pre>
$ git clone https://github.com/JihadMotii-REISys/g18f-stack.git
$ vagrant up
</pre>


Note: the IP address allocated to this new VM Box is 192.168.56.107 and if you have used this IP Address, you can change it in `puphpet/config.yaml`

## Starting dev :

After the VM is up and running, these are the following command to use for vagrant to start, shutdown, delete your current VM:

<pre>
$ vagrant up        # Install/Run the VM
$ vagrant halt      # shutdown the VM
$ vagrant destroy   # remove the VM
$ vagrant ssh       # access to your VM (SSH)
</pre>

To browse the project on the guest machine:

<pre>
$ vagrant ssh
$ cd /var/www/gsa-18f
</pre>

### Frontend :

This is an AngularJS application to demonstrate how to use separate backend and frontend applications. 

### Backend :

Backend is a Sails application without frontend. Basically this only serves an API calls - nothing else.

## Update Environment:

If you want to update your environment with our latest builds, simply browse to your path where you cloned git project:

<pre>
$ vagrant provision --provision-with shell
</pre>
