# BIM portal

Infrastructure management for [bimscript](https://www.bimscript.com)

## developer

First you need to install:

 * [git](http://git-scm.com/downloads)
 * [virtualbox](https://www.virtualbox.org/wiki/Downloads)
 * [vagrant](http://www.vagrantup.com/downloads.html)

Then open a command line (windows or mac or linux).

Then change directory to where you keep projects e.g. `cd projects`.

Then we need to clone the source code:

```
$ git clone https://github.com/binocarlos/bim
$ cd bim
```

### start vm

We use vagrant to start and stop virtualbox vms - to start the VM: 

```bash
$ cd bim
$ vagrant up
```

This will start a vagrant box and install dependencies.

### ssh to vm

Once the Vagrant box has started - we need a command line for it so we SSH into the box.

```bash
$ vagrant ssh
```

NOTE: on Windows you will need to install [Putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) and use Puttygen (download from the same page) to convert the vagrant public key.

A [guide](https://github.com/Varying-Vagrant-Vagrants/VVV/wiki/Connect-to-Your-Vagrant-Virtual-Machine-with-PuTTY) for how to do this is [here](https://github.com/Varying-Vagrant-Vagrants/VVV/wiki/Connect-to-Your-Vagrant-Virtual-Machine-with-PuTTY)

### cd to /vagrant

Once you have a command line to the box - change directory to where this repo is mounted as a shared folder - `/vagrant`

```bash
$ cd /vagrant
$ ls -la
```

## bimctl


There is an admin script that will manage the stack for development:

```bash
$ bimctl help
```

### vars

You can manually set variables in the `/etc/bim/config` file

```bash
$ cat /etc/bim/config
API_VERSION=v1
```

### start services

```bash
$ bimctl up
```

### stop services

```bash
$ bimctl down
```

### show service status

```bash
$ bimctl status
```

### view app in browser

A port is mounted onto the host so you can enter `http://127.0.0.1:8080` into a browser once you have done `bimctl up`.

### build client assets

The client CSS and JS is bundled - use the admin bundle command to rebuild it

```bash
$ bimctl build
```

## config

You can configure the variables for bim itself by setting values in the `/etc/bim/config` file.

## tests

There are various types of test:

 * acceptance tests - test the whole system against cloud instances
 * integration tests - test parts of the system working together
 * unit tests - test isolated unit of the system

To run the acceptance tests you must have vagrant and virtualbox installed and SSH into the VM:

```bash
$ vagrant up
$ vagrant ssh
vagrant$ cd /vagrant
```

### acceptance tests

To run the acceptance tests - cloud provider variables must be set (TBC)

You can `bimctl configure` to enter these values.

```bash
$ bimctl test acceptance
```

will run the acceptance tests

### integration tests

```bash
$ bimctl test integration
```

### unit tests

```bash
$ bimctl test unit
```

### all tests

```bash
$ bimctl test all
```
