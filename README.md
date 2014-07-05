Example app for returning time series trends and forecasts. To be used in conjunction with openCPU as a means to call package functions through a REST webservice.

To install and load in R : 

library(devtools)
install_github("felarof/opencpuTS")

library(opencpuTS)

Package comes with a data-set that is exported into the package namespace by default. To load it into your workspace, run : 

data(partsDemand)
