.PHONEY: viking-up

# vagrant up with VIKING_HOME set to my home folder
# used for developing bim + viking in parallel
viking-up:
	VIKING_HOME=/home/kai/projects/viking vagrant up