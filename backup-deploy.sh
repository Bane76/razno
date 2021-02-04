#!/bin/sh
mkdir /home/k8s/cluster-config/easyrsa-backup
mkdir /home/k8s/cluster-config/etcd-backup
mkdir /home/k8s/cluster-config/controller-backup
tar xvzf backup-scripts.tar.gz
chmod 755 /home/k8s/cluster-config/easyrsa-backup.sh
chmod 755 /home/k8s/cluster-config/etcd-backup.sh
chmod 755 /home/k8s/cluster-config/controller-backup.sh
touch /home/k8s/cluster-config/easyrsa-output
touch /home/k8s/cluster-config/etcd-output
crontab /home/k8s/cluster-config/my-crontab
### https://bugs.launchpad.net/juju/+bug/1893844
sudo snap alias juju-db.mongodump mongodump
sudo ln -s /var/snap/juju-db/common/shared-secret /var/lib/juju/shared-secret
