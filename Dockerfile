from phusion/baseimage
maintainer rickard@gimerstedt.se

# use baseimage-docker's init system.
cmd ["/sbin/my_init"]

run apt-get update; apt-get upgrade -y; apt-get install -y

run	apt-get install -y python-pip \
&&	pip install flexget --upgrade

# make directories for service-scripts
run mkdir /etc/service/flexget \
		&& mkdir /torrents \
		&& mkdir -p /root/.flexget

# add service scripts
add flexget.sh /etc/service/flexget/run

# clean up apt when done.
run apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
