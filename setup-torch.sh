#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup-torch.sh




sudo apt-get update

curl -sk https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash

git clone https://github.com/torch/distro.git /home/ubuntu/workspace/torch --recursive

cd /home/ubuntu/workspace/torch

#chmod a+x install.sh

./install.sh


source ~/.bashrc


git clone https://github.com/torch/demos




cd /home/ubuntu/workspace

echo "try running the command below from a terminal"
echo "Problem is it will take up too much space for cloud9 wthout paying a monthly fee :<"
echo ""
echo "th ~/torch/demos/train-on-cifar/train-on-cifar.lua"




