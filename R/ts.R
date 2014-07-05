#' @export

forecast_stl<-function(input,plot.it=T){

#read in csv file as data frame with same format as partsDemand and pass it as argument to this function  
  
  input$Date = as.Date(input$Date, format = '%m/%d/%Y')
  Intera.Power.Pulsar = ts(input$Intera.1.5T.Power.Pulsar, frequency=12)
  
  stl.Intera.Power.Pulsar = stl(Intera.Power.Pulsar, s.window='periodic')
  if(plot.it==T){
    plot(forecast(stl.Intera.Power.Pulsar, h=10))
  }
  predict.Intera.Power.Pulsar = data.frame(predict(stl.Intera.Power.Pulsar))
  return(predict.Intera.Power.Pulsar)
}

#' @export

decompose_stl<-function(input,plot.it=T){
  
  #read in csv file as data frame with same format as partsDemand and pass it as argument to this function  
  
  input$Date = as.Date(input$Date, format = '%m/%d/%Y')
  Intera.Power.Pulsar = ts(input$Intera.1.5T.Power.Pulsar, frequency=12)
  
  stl.Intera.Power.Pulsar = stl(Intera.Power.Pulsar, s.window='periodic')
  if(plot.it==T){
    plot(stl.Intera.Power.Pulsar, main='Intera Power Pulsar')
  }
  df.Intera.Power.Pulsar = as.data.frame(stl.Intera.Power.Pulsar$time.series[,1:3])
  return(df.Intera.Power.Pulsar)
}


