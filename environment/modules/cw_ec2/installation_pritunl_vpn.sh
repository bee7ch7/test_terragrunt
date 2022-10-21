#!/bin/bash
tee /etc/apt/sources.list.d/pritunl.list << EOF
deb http://repo.pritunl.com/stable/apt focal main
EOF

# Import signing key from keyserver
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
# Alternative import from download if keyserver offline
curl https://raw.githubusercontent.com/pritunl/pgp/master/pritunl_repo_pub.asc | apt-key add -

tee /etc/apt/sources.list.d/mongodb-org-5.0.list << EOF
deb https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse
EOF

wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -

apt update

# WireGuard server support
apt -y install wireguard wireguard-tools

ufw disable

apt -y install pritunl mongodb-org
systemctl enable mongod pritunl
systemctl start mongod pritunl