#echo "Unfortunately on cloud 9 Pip hides the TensorFlow folder so lets clone it for our use"
#echo "Kind of wasteful but it isn't on our computer anyway"

#deactivate

git clone --recurse-submodules https://github.com/tensorflow/tensorflow

echo "Make a quick link to udacity example files" 

ln -s /home/ubuntu/workspace/tensorflow/tensorflow/examples/udacity /home/ubuntu/workspace/udacity-Link


echo "Make a quick link to skflow example files" 

ln -s /home/ubuntu/workspace/tensorflow/tensorflow/examples/skflow /home/ubuntu/workspace/skflow-examples/skflow-link

echo "Make a link to the actual installed pip tensorflow not just the github clone"

ln -s /home/ubuntu//virtual-tf/lib/python2.7/site-packages/tensorflow /home/ubuntu/workspace/pip-tensorflow-link


#echo "Download dbpedia since it presently does not load"
#fixed with latest build
#wget https://googledrive.com/host/0Bz8a_Dbh9Qhbfll6bVpmNUtUcFdjYmF2SEpmZUZUcVNiMUw1TWN6RDV3a0JHT3kxLVhVR2M/dbpedia_csv.tar.gz -P /home/ubuntu/workspace/skflow-examples/dbpedia_data


#wget https://googledrive.com/host/0Bz8a_Dbh9Qhbfll6bVpmNUtUcFdjYmF2SEpmZUZUcVNiMUw1TWN6RDV3a0JHT3kxLVhVR2M/dbpedia_csv.tar.gz
#tar xvf dbpedia_csv.tar.gz -C /home/ubuntu/workspace/skflow-examples/dbpedia-data

#rm dbpedia_csv.tar.gz




#testing RNN

git clone https://github.com/hpssjellis/char-rnn-tensorflow-music-3dprinting.git







echo "enter   deactivate    to get out of the virtual enviroment"



echo "--------------------------------------------------------------"
echo ". "


pip install --upgrade ipython
pip install --upgrade jupyter





#jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser
jupyter notebook --ip $IP --port $PORT --no-browser

# bash file stays here so no more commands will work
