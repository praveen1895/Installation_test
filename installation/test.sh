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
    // sudo curl "https://apt.releases.teleport.dev/gpg \ -o /usr/share/keyrings/teleport-archive-keyring.asc"
    //source /etc/os-release
    // echo "deb [signed-by=/usr/share/keyrings/teleport-archive-keyring.asc] \ https://apt.releases.teleport.dev/${ID?} ${VERSION_CODENAME?} stable/v11" \
    //| sudo tee /etc/apt/sources.list.d/teleport.list > /dev/null
    //sudo apt-get update -y
    //sudo apt-get install teleport
    // sh "curl https://cdn.teleport.dev/teleport-connect-11.1.4-x64.tar.gz -o"
}

install_aws_cli
aws --version
install_netcat
#netcat --version
nc -h
install_tsh
