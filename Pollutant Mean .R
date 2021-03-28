pollutantmean <- function(directory, pollutant, id=1:332){
 files_full<-list.files(directory, full.names = TRUE) #makes list of files with path
 data<-data.frame() #empty dataframe
 for (i in id){
   data<-rbind(data,read.csv(files_full[i])) 
 } #loops through id to bind rows of files, filling dataframe 
 if (pollutant=="nitrate") {
   mean(data[,"nitrate"],na.rm=TRUE) #mean of columns named nitrate w/o NA's
 } 
 else {
   mean(data[,"sulfate"],na.rm=TRUE) #mean of columns named sulfate w/o NA's
 }
}




