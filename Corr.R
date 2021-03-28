corr <- function(directory, threshold = 0){
  files_full <- list.files(directory, full.names=TRUE)
  data<-data.frame()
  correlations<-numeric()
  for (i in 1:332){
       data<-read.csv(files_full[i])
       nobs <- sum(complete.cases(data))
       if (nobs > threshold) {
         new_correlations <- cor(data$nitrate,data$sulfate,use="complete.obs")
         correlations<-c(correlations,new_correlations)
       }
       else {NULL}
  }
  correlations
}
