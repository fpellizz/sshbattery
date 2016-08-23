#!/bin/sh


terminal_bin=/usr/bin/konsole
identity_path=/home/fpellizz/fax/certificati/aws
identity_file=Erica.pem

clear
#prod db
#echo "Tab #1 => Prod DB (ec2-user@ec2-54-171-57-134.eu-west-1.compute.amazonaws.com)"
#$terminal_bin --new-tab -e ssh -i $identity_path/$identity_file ec2-user@ec2-54-171-57-134.eu-west-1.compute.amazonaws.com
#echo "Tab #2 => App Server #1 (ec2-user@ec2-54-229-100-56.eu-west-1.compute.amazonaws.com)"
#$terminal_bin --new-tab -e ssh -i $identity_path/$identity_file ec2-user@ec2-54-229-100-56.eu-west-1.compute.amazonaws.com

function connessione() { 
    local a=$($terminal_bin --new-tab -e ssh -i $identity_path/$identity_file ec2-user@ec2-54-229-100-56.eu-west-1.compute.amazonaws.com) || echo "error"
    echo "$a"
    }

b=$(connessione)
echo "$b"

#if [ $($terminal_bin --new-tab -e ssh -i $identity_path/$identity_file ec2-user@ec2-54-229-100-56.eu-west-1.compute.amazonaws.com) ]; then 
#        echo "connection estabilished"
#else 
#        echo "opps..."
#fi

#$terminal_bin --new-tab -e ssh -i ~/fax/certificati/aws/Erica.pem ec2-user@ec2-54-229-159-8.eu-west-1.compute.amazonaws.com
#$terminal_bin --new-tab -e ssh -i ~/fax/certificati/aws/Erica.pem ec2-user@ec2-52-16-46-80.eu-west-1.compute.amazonaws.com
#$terminal_bin --new-tab -e ssh -i ~/fax/certificati/aws/Erica.pem ec2-user@ec2-52-17-86-83.eu-west-1.compute.amazonaws.com
