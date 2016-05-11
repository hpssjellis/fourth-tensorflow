
from sklearn import datasets, metrics

iris = datasets.load_iris()

def my_model(X, y):
    """This is DNN with 10, 20, 10 hidden layers, and dropout of 0.5 probability."""
    layers = skflow.ops.dnn(X, [10, 20, 10], keep_prob=0.5)
    return skflow.models.logistic_regression(layers, y)


classifier = skflow.TensorFlowRNNClassifier(rnn_size=EMBEDDING_SIZE, 
    n_classes=15, cell_type='gru', input_op_fn=input_op_fn,
    num_layers=1, bidirectional=False, sequence_length=None,
    steps=1000, optimizer='Adam', learning_rate=0.01, continue_training=True)
