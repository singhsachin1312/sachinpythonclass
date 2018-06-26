import scipy as sv
import pandas as pd
data=pd.read_csv("kc_house_data.csv")

#data= sv.genfromtext("kc_house_data", delimiter=",")
print(data.describe())
print(data.size)
print(data.head)
print(data.groupby)