#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup-torch.sh




sudo apt-get update

curl -sk https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash

git clone https://github.com/torch/distro.git ~/torch --recursive

cd ~/torch; 

#chmod a+x install.sh

./install.sh


source ~/.bashrc


git clone https://github.com/torch/demos


th ~/torch/demos/train-on-cifar/train-on-cifar.lua


cd ~/




