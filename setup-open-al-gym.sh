#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup-open-al-gym.sh




sudo apt-get update
cd /home/ubuntu/workspace

git clone https://github.com/openai/gym
cd gym
pip install gym # minimal install may try the next line instead

#pip install gym[all]

echo"See the docs at https://gym.openai.com/docs"

