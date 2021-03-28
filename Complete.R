complete <- function(directory, id = 1:332){
  data_raw <- data.frame() #empt dataframe
  data <- data.frame()
  file_list <- list.files(directory,full.names=T) #file list
  nobs <- c() #empty vector
  
  for (i in id){
    data_raw<-read.csv(file_list[i]) # reads data into datafram
    nobs<-c((nobs),sum(complete.cases(data_raw))) #reads total complete cases and adds to itself
  }
    data<-data.frame("id"=id, nobs) #merges two vectors
  data
}
  
  
