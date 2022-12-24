#!/bin/bash
install_aws_cli()
{
    sudo apt-get update
    sudo apt-get -y install awscli 
    if [ $? -ne 0 ]; then
       echo "error while installing awscli"
    fi
    echo "awscli installed successfully"
}
install_netcat()
{
    sudo apt-get update
    sudo apt-get -y install netcat-traditional
    if [ $? -ne 0 ]; then
       echo "error while installing netcat"
    fi
    echo "netcat installed successfully"
}
install_tsh()
{
    sh "curl https://cdn.teleport.dev/teleport-connect-11.1.4-x64.tar.gz -o"
}

install_aws_cli
aws --version
install_netcat
#netcat --version
nc -h
install_tsh
