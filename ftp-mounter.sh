#!/bin/bash
read -p "Username: " user
echo -n "Password: "
read -s pass
echo ''
read -p "Server:   " server
path=/home/user/code/ftp
curlftpfs -o codepage=utf8 ftp://${user}:${pass}@${server} /home/user/code/ftp/ -v -o ssl,no_verify_hostname,no_verify_peer

#curlftpfs -o codepage=utf8 ftp://ncu7221:Ncu57221@sparc11.cc.ncu.edu.tw /home/user/code/ftp/ -v -o ssl,no_verify_hostname,no_verify_peer