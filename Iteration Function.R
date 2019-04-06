#Iteration Function
It_func<-function(rv,F,lambda,alpha,beta){
  dimension<-dim(F)[2]
  beta_0<-mean(rv)
  It_beta<-beta
  for(index in 1:dimension){
    It_beta[index]<-Up_func(rv,F,lambda,alpha,It_beta,index)
  }
  It_beta
}