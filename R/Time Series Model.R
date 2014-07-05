partsDemand$Date = as.Date(partsDemand$Date, format = '%m/%d/%Y')
Intera.Power.Pulsar = ts(partsDemand$Intera.1.5T.Power.Pulsar, frequency=12)

#arima.Intera.Power.Pulsar = auto.arima(ts.Intera.Power.Pulsar, trace=TRUE)
#plot(forecast(arima.Intera.Power.Pulsar, h=10))
#predict(arima.Intera.Power.Pulsar, n.ahead=10)

library(forecast)

stl.Intera.Power.Pulsar = stl(Intera.Power.Pulsar, s.window='periodic')
plot(stl.Intera.Power.Pulsar, main='Intera Power Pulsar')
plot(forecast(stl.Intera.Power.Pulsar, h=10))

predict.Intera.Power.Pulsar = data.frame(predict(stl.Intera.Power.Pulsar))
df.Intera.Power.Pulsar = as.data.frame(stl.Intera.Power.Pulsar$time.series[,1:3])
