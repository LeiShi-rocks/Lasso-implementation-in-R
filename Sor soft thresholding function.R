#soft_thresholding function
S_func<-function(z,y){
  result<-0
  if(z>0 && y<abs(z))
    result<-(z-y)  
  if(z<=0 && y<abs(z))
    result<-(z+y)
  if(y>=abs(z))
    result<-0
    result
}