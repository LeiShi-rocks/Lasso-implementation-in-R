#update function:return a new beta_index
Up_func<-function(rv,F,lambda,alpha,beta,index){
  beta_0<-mean(rv)
  N<-length(rv)
  ypr_ind<-beta_0*rep(1,N)+F[,-index]%*%beta[-index] #the y prediction res(ypr) in terms of index
  S_func(t(F[,index])%*%(rv-ypr_ind)/N,lambda*alpha)/(1+lambda*(1-alpha))
}