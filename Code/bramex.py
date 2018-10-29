## bramex data set ##

# Importing data #
import pandas as pd
df = pd.read_csv('https://raw.githubusercontent.com/' + \
    'mcanela-iese/Stats_Course/master/Data/bramex.csv')
df.info()
df.head()
df.tail()
df.describe()

# Regression line #
import statsmodels.formula.api as smf
regmod = smf.ols(formula = 'mex ~ bra', data = df).fit()
regmod.summary()

# Correlation analysis #
df[['bra', 'mex']].corr()

# Figure 1 (customize) #
import matplotlib.pyplot as plt
plt.scatter(df['bra'], df['mex'], color='0.3', s=16)
plt.xlabel('Brazil')
plt.ylabel('Mexico')
# plt.savefig('Figures/fig 1.1.pdf')
plt.show()

# Figure 2 (customize) #
import statsmodels.api as sm
sm.graphics.abline_plot(model_results=regmod, color='0.3')
plt.scatter(df['bra'], df['mex'], color='0.3', s=16)
plt.xlabel('Brazil')
plt.ylabel('Mexico')
# plt.savefig('Figures/fig 1.1.pdf')
plt.show()
