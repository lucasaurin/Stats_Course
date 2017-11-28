** supermarket data set **

* Exploration *
summarize
correlate

* Regression analysis *
regress reuse type perfo conv employee sat

* Standardized coefficients *
egen z_reuse = std(reuse)
egen z_perfo = std(perfo)
egen z_conv = std(conv)
egen z_employee = std(employee)
egen z_sat = std(sat)
regress z_reuse type z_perfo z_conv z_employee z_sat
regress reuse type perfo conv employee sat, beta

* Interaction terms *
generate tperfo = type*z_perfo
generate tconv = type*z_conv
generate temployee = type*z_employee
generate tsat = type*z_sat
regress z_reuse type z_perfo tperfo z_conv tconv z_employee temployee z_sat tsat
