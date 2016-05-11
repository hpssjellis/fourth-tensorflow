# https://github.com/tensorflow/tensorflow/tree/master/tensorflow/contrib/learn/python/learn

from sklearn import datasets, metrics, preprocessing

boston = datasets.load_boston()
X = preprocessing.StandardScaler().fit_transform(boston.data)
regressor = learn.TensorFlowLinearRegressor()
regressor.fit(X, boston.target)
score = metrics.mean_squared_error(regressor.predict(X), boston.target)
print ("MSE: %f" % score)


