.PHONEY: all removepackages latestgit gitconfig gitshortcuts docker

all: removepackages latestgit docker

removepackages:
	apt-get remove -y puppet chef

# updates to the latest git so we can use password caching
latestgit:
	add-apt-repository ppa:voronov84/andreyv -y
	apt-get update
	apt-get install -y git

# configures git with our details
gitconfig: gitshortcuts
	git config --global user.name "${GIT_NAME}"
	git config --global user.email "${GIT_EMAIL}"
	git config --global credential.helper 'cache --timeout=3600'

gitshortcuts:
	git config --global alias.ac '!git add -A && git commit'

docker:
	sudo apt-get update
	sudo apt-get -y install linux-image-extra-`uname -r`
	curl -sSL https://get.docker.io/ubuntu/ | sudo sh
	sudo usermod -a -G docker vagrant