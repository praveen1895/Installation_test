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
    
    export version=v11.1.4
    export os=linux
    export arch=amd64
    curl https://get.gravitational.com/teleport-$version-$os-$arch-bin.tar.gz.sha256
    
}

install_aws_cli
aws --version
install_netcat
#netcat --version
nc -h
install_tsh
tsh help
