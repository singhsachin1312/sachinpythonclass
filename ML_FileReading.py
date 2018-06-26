import scipy

data =scipy.genfromtxt("web_t.csv",delimiter=",")
print(data)
print(data.shape)
x=data[:,0]
y=data[:,1]
print(x)
print(y)
print(scipy.sum(scipy.isnan(y)))
x1=x[~scipy.isnan(y)]
y1=y[~scipy.isnan(y)]
print(x1)
print(y1)