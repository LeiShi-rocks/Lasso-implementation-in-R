coor_des<-function(rv,Fd,beta,lambda,alpha,accuracy,maxiteration){
#Variable list
  #rv: response variable
  #Fd: original design Matrix
  #beta: initial beta
  #lambda: the parameter in penalty term
  #alpha: the parameter in elastic net
  #accuracy
  #maxiteration
  
#Standardize F
  N<-length(rv)
  Fd<-as.matrix(Fd)
  F_standard<-scale(Fd)*sqrt(N/(N-1)) #scale:center sample divided by unbiased variance
  
#Calculate Beta_0
  beta_0<-mean(rv)

#Iteration Process    
  It_beta_pre<-beta
  It_beta_up<-beta
  itcount<-0
  epsilon<-0
  for(i in 1:maxiteration){
    It_beta_up<-It_func(rv,F_standard,lambda,alpha,It_beta_pre)
    itcount<-itcount+1
    if(crossprod(It_beta_pre-It_beta_up)<accuracy)
      break;
    It_beta_pre<-It_beta_up
  }
  #list(It_beta_up,itcount)
  It_beta_up
}
  