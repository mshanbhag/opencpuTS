.onLoad <- function(lib,pkg){
  #automatically loads the dataset when package is loaded
  #do not use this in combination with lazydata=true
  #' @export
  utils::data(partsDemand, package=pkg, envir = parent.env(environment()))
}
#.onLoad(lib,"opencpuTS")

