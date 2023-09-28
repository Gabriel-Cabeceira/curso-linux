#!/bin/bash

# Removing users

userdel -rf carlos

userdel -rf maria

userdel -rf joao

userdel -rf debora

userdel -rf sebastiana

userdel -rf roberto

userdel -rf josefina

userdel -rf amanda

userdel -rf rogerio


# Removing groups

groupdel GRP_ADM

groupdel GRP_SLS

groupdel GRP_SEC


# Removing directories

rm -rf /public /adm /sales /sec




# Create directories

mkdir /public

mkdir /adm

mkdir /sales

mkdir /sec


# Create groups

groupadd GRP_ADM

groupadd GRP_SLS

groupadd GRP_SEC


# Setting derectory owners

chown root:root /public

chown root:GRP_ADM /adm

chown root:GRP_SLS /sales

chown root:GRP_SEC /sec


# create ADM users

useradd carlos -m -s /bin/bash -G GRP_ADM
echo "carlos:senha" | sudo chpasswd
sudo passwd -e carlos 

useradd maria -m -s /bin/bash -G GRP_ADM
echo "maria:senha" | sudo chpasswd
sudo passwd -e maria

useradd joao -m -s /bin/bash -G GRP_ADM
echo "joao:senha" | sudo chpasswd
sudo passwd -e joao

# create SLS users

useradd debora -m -s /bin/bash -G GRP_SLS
echo "debora:senha" | sudo chpasswd
sudo passwd -e debora

useradd sebastiana -m -s /bin/bash -G GRP_SLS
echo "sebastiana:senha" | sudo chpasswd
sudo passwd -e sebastiana

useradd roberto -m -s /bin/bash -G GRP_SLS
echo "roberto:senha" | sudo chpasswd
sudo passwd -e roberto

# create SEC users

useradd josefina -m -s /bin/bash -G GRP_SEC
echo "josefina:senha" | sudo chpasswd
sudo passwd -e josefina

useradd amanda -m -s /bin/bash -G GRP_SEC
echo "amanda:senha" | sudo chpasswd
sudo passwd -e amanda

useradd rogerio -m -s /bin/bash -G GRP_SEC
echo "rogerio:senha" | sudo chpasswd
sudo passwd -e rogerio

# Changing permissions

chmod 777 /public

chmod 770 /adm

chmod 770 /sales

chmod 770 /sec

echo "Settings completed successfully"
