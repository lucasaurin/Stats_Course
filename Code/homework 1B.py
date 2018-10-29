## Homework 1B ##

# Importing data #
import pandas as pd
df = pd.read_csv('https://raw.githubusercontent.com/' + \
    'mcanela-iese/Stats_Course/master/Data/roeroa.csv')
df.info()
df.head()
df.describe()

# Regression line #
import statsmodels.formula.api as smf
mod1 = smf.ols(formula = 'roa ~ roe', data = df).fit()
mod1.summary()

# Plotting #
import statsmodels.api as sm
sm.graphics.abline_plot(model_results=mod1, color='0.3')
import matplotlib.pyplot as plt
plt.scatter(df['roe'], df['roa'], color='0.3', s=16)
plt.xlabel('ROE')
plt.ylabel('ROA')
plt.show()

# Trimming data #
trim = (df['roe'] < 100) & (df['roa'] < 35)

# Plotting #
sm.graphics.abline_plot(model_results=mod2, color='0.3')
plt.scatter(df['roe'][trim], df['roa'][trim], color='0.3', s=16)
plt.xlabel('ROE')
plt.ylabel('ROA')
plt.show()
