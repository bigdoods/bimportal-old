# BIMportal

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
$ git clone https://github.com/BIMscript/BIMportal
$ cd BIMportal
```

### start vm

We use vagrant to start and stop virtualbox vms - to start the VM: 

```bash
$ cd BIMportal
$ vagrant up
```

This will start a vagrant box and install dependencies.

### ssh to vm

Once the Vagrant box has started - we need a command line for it so we SSH into the box.

```bash
$ vagrant ssh
```

NOTE: If using Windows, ignore this command. You will need to install [Putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) and use Puttygen (download from the same page) to convert the vagrant public key.

A guide for how to do this is [here](https://github.com/Varying-Vagrant-Vagrants/VVV/wiki/Connect-to-Your-Vagrant-Virtual-Machine-with-PuTTY)

### cd to /vagrant

Now inside vagrants cmd window

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
$ bimctl stop
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

## design

A rough overview of the architecture of the system.

### services

There are a range of services each communicating over the network - generally in HTTP.

 * router
 * authentication
 * authorization
 * user store
 * web
 * event bus
 * logging
 * logstash/elasticsearch
 * redis
 * postgres

#### router

The edge service that user requests will arrive at.  The router knows which other backend services will handle the request.

 * read HTTP headers of request
 * match route based on the master routing table loaded from redis - refreshed every x seconds
 * format of routing table is route=service name

#### authentication

Handles user logging in

 * register - POST user details -> create account
 * login - POST username / password -> create cookie
 * logout - delete cookie

#### authorization

Handles answering whether a user can do a certain action - based on some kind of ACL

#### user store

A pure data store used to save the user accounts / credentials

Basically a REST api -> database (probably postgres) bridge

#### web

Static assets server - for built client JS/CSS

#### event bus

Distributed application events - use nsq

Other services broadcast events onto the bus

#### logging

Listen to the event bus for events and send logs to logstash

#### logstash/elasticsearch

For saving logs

#### redis

For user sessions

#### postgres

For user account data




