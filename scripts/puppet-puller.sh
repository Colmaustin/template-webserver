#!/bin/bash
cd /root/template-webserver
git pull
rsync -r /root/template-webserver/puppet/manifests/ /etc/puppet/manifests/
rsync -r /root/template-webserver/puppet/modules/ /etc/puppet/modules/ 
