.PHONEY: all apt-repos apt-configure apt-install folders docker compose jq bats installpackages removepackages gitconfig gitshortcuts

# AUTO INSTALL (parts that are run from vagrant provision)

folders:
	mkdir -p /var/bim

# setup any apt repos we need before installing packages
apt-repos:
	sudo add-apt-repository ppa:voronov84/andreyv -y

# setup repos and then apt-get update
apt-configure: apt-repos
	sudo apt-get update

# install apt packages
apt-install:
	sudo apt-get install -y \
		linux-image-extra-`uname -r` \
		git

# install docker (which will use aufs if installed)
docker:
	curl -sSL https://get.docker.io/ubuntu/ | sudo sh
	# means the dev user can directly use the docker command
	sudo usermod -a -G docker vagrant

# install docker-compose
compose:
	curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose

# install JSON parser
jq:
	curl -L http://stedolan.github.io/jq/download/linux64/jq > /usr/local/bin/jq
	chmod +x /usr/local/bin/jq

# install the bats bash testing framework
bats:
	cd /tmp && git clone https://github.com/sstephenson/bats.git
	sudo /tmp/bats/install.sh /usr/local

# apt packages then other packages
installpackages: apt-configure apt-install folders docker compose jq bats

# remove puppet, chef
removepackages:
	sudo bash -c "echo 'manual' > /etc/init/puppet.override"
	sudo bash -c "echo 'manual' > /etc/init/chef.override"
	sudo apt-get remove -y --auto-remove puppet chef
	sudo apt-get purge -y --auto-remove puppet chef

all: removepackages installpackages

# manual (parts that are run from a command line after provisioning)

# configures git with our details
gitconfig: gitshortcuts
	git config --global user.name "${GIT_NAME}"
	git config --global user.email "${GIT_EMAIL}"
	git config --global credential.helper 'cache --timeout=3600'

gitshortcuts:
	git config --global alias.ac '!git add -A && git commit'

