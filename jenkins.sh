#!/bin/sh

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
echo "deb http://pkg.jenkins-ci.org/debian binary/" > /etc/apt/sources.list.d/jenkins.list
apt-get update
apt-get -y install jenkins

# allow jenkins to run docker
adduser jenkins docker

echo "install plugins:"
echo "- Github"
echo "- Github pull request"
echo "- AnsiColor Plugin"
echo "- Post build task"
echo ""
echo "Follow the steps at http://superuser.com/questions/701032/jenkins-listens-on-weird-ports/701068 to close useless ports."

