import pandas as pd
import matplotlib.pyplot as plt


data = pd.read_csv("kc_house_data.csv")
data['bedrooms'].value_counts().plot(kind='bar')
plt.title('No of bedrooms')
plt.xlabel('Bedrooms')
plt.ylabel('count')

plt.show()