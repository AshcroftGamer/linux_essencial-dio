#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando 2 grupos"

groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC

echo "fim da criação dos grupos"

echo"adicionar os usuários no sistema"
useradd larissa -c "Larissa Maria" -m -s /bin/bash -p $(opessl passwd -crypt Senha123) 
useradd joao -c "Joao Carvalho" -m -s /bin/bash -p (openssl passwd -crypt Senha123)
useradd maria -c "Marisa dos Santos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo"fim da criação dos usuários"

usermod -G GRP_VEN larissa
usermod -G GRP_ADM,adm,sudo joao 
usermod -G GRP_ADM maria 

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root: GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim"
