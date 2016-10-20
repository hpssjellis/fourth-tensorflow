#!/usr/bin/env python

import numpy as np
from keras.models import Sequential
from keras.layers.core import Activation, Dense



import sys
print 'Number of arguments:', len(sys.argv), 'arguments.<br>'
print 'Argument List:', str(sys.argv), '<br>'

print 'Argument List[1]:', str(sys.argv[1]), 'br>'


# the four different states of the XOR gate
training_data = np.array([[0,0],[0,1],[1,0],[1,1]], "float32")

# the four expected results in the same order
#target_data = np.array([[0],[1],[1],[0]], "float32")

target_data = np.array([[int(sys.argv[1])],[int(sys.argv[2])],[int(sys.argv[3])],[int(sys.argv[4])]], "float32")

model = Sequential()
model.add(Dense(16, input_dim=2, activation='relu'))
model.add(Dense(1, activation='sigmoid'))

model.compile(loss='mean_squared_error',
              optimizer='adam',
              metrics=['binary_accuracy'])

model.fit(training_data, target_data, nb_epoch=500, verbose=2)

print '<hr><br>The resulted trained data...<br><hr><br>'

print model.predict(training_data).round()