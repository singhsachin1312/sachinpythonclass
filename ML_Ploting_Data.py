import scipy
import matplotlib.pyplot as plt


data =scipy.genfromtxt("web_t.csv",delimiter=",")
x=data[:,0]
y=data[:,1]
plt.scatter(x,y)
plt.title("web traffic over the last month")
plt.xlabel("time")
plt.ylabel("hits/hour")
plt.xticks()
plt.autoscale(tight=True)
plt.grid()
plt.show()