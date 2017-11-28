** hprice1 data set **

* Summary #
summarize

* Exploration *
correlate price bdrms lotsize sqrft

* Comparing significance levels *
regress price bdrms lotsize sqrft
regress price bdrms lotsize sqrft, robust

* Exploring heteroskedasticity *
predict ei, residuals
generate ei2 = ei^2
correlate bdrms lotsize sqrft ei2
regress ei2 bdrms lotsize sqrft

* Testing hetereroskedasticity *
quietly regress price bdrms lotsize sqrft
hettest

* Breusch-Pagan (chisq version) as presented in Wooldridge, ch 8 *
hettest, rhs iid

* Reducing heteroskedasticity *
generate lprice = log(price)
regress lprice bdrms lotsize sqrft
hettest

* Comparing standard erors again *
regress lprice bdrms lotsize sqrft, robust

* A simple explanation *
graph matrix price lotsize sqrft
