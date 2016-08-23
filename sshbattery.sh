#!/bin/sh

terminal_bin=/usr/bin/konsole
identity_path=/home/fpellizz/fax/certificati/aws
identity_file=Erica.pem

clear

function connessione() { 
    #########################################
    #usage:
    #connessione $username $host $key $port
    #
    #########################################
    conn_username=$1
    conn_host=$2
    conn_certificate=$3
    conn_port=$4
    
    if [ $conn_certificate -ne "" ]; then
            $conn_opts='$conn_opts -i $conn_certificate'
    fi
    
    if [ $conn_port -ne "" ]; then
            $conn_opts='$conn_opts -p $conn_port'
    fi
    
    $terminal_bin --new-tab -e ssh  $conn_opts $conn_username@$conn_host
    
    }

#prod db
echo "Tab #1 => Prod DB (ec2-54-171-57-134.eu-west-1.compute.amazonaws.com)"
connession ec2-user ec2-54-171-57-134.eu-west-1.compute.amazonaws.com $identity_path/$identity_file
#app server 1
echo "Tab #2 => App Server #1 (ec2-54-171-57-134.eu-west-1.compute.amazonaws.com)"
connession ec2-user ec2-54-229-159-8.eu-west-1.compute.amazonaws.com $identity_path/$identity_file
#app server 2
echo "Tab #3 => App Server #2 (ec2-54-171-57-134.eu-west-1.compute.amazonaws.com)"
connession ec2-user ec2-52-16-46-80.eu-west-1.compute.amazonaws.com $identity_path/$identity_file
#shibboleth 1
echo "Tab #4 => Shibboleth #1 (ec2-54-171-57-134.eu-west-1.compute.amazonaws.com)"
connession ec2-user ec2-52-17-86-83.eu-west-1.compute.amazonaws.com $identity_path/$identity_file
#shibboleth 2
echo "Tab #5 => Shibboleth #2 (ec2-54-171-57-134.eu-west-1.compute.amazonaws.com)"
connession ec2-user ec2-52-17-86-83.eu-west-1.compute.amazonaws.com $identity_path/$identity_file
