## Homework 1C ##

# Importing data #
import pandas as pd
df = pd.read_csv('https://raw.githubusercontent.com/' + \
    'mcanela-iese/Stats_Course/master/Data/indianbanks.csv')
df.info()
df.head()
df.describe()

# A function that calculates returns #
def ret(x):
    y = x[1:].divide(x[:x.shape[0]-1].values) - 1
    return y

# Creating a data set of returns #
df_ret = pd.DataFrame(df.iloc[1:, 0])
for i in range(1, 6):
    df_ret = pd.concat([df_ret, ret(df.iloc[:, i])], axis=1)
df_ret.columns = ['date', 'axis', 'baroda', 'hdfc', 'icici', 'state']
df_ret.info()

# Correlation matrix #
df_ret.iloc[:, 1:].corr()

# Less decimals #
df_ret.iloc[:, 1:].corr().round(2)
