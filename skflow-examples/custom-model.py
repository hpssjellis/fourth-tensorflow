from sklearn import datasets, metrics

iris = datasets.load_iris()

def my_model(X, y):
    """This is DNN with 10, 20, 10 hidden layers, and dropout of 0.5 probability."""
    layers = learn.ops.dnn(X, [10, 20, 10], dropout=0.5)
    return learn.models.logistic_regression(layers, y)

classifier = learn.TensorFlowEstimator(model_fn=my_model, n_classes=3)
classifier.fit(iris.data, iris.target)
score = metrics.accuracy_score(iris.target, classifier.predict(iris.data))
print("Accuracy: %f" % score)
