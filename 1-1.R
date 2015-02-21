#GGR Chapter 1, Exercise 1
install.packages("tseries")
df1=data.frame(a=1:10,b=11:20)
df1
mean_col=function(dfrm,col) mean(get(dfrm)[[col]])
mean_col("df1","b")
p<-c(0, 5, 1, 1, 0.5, 1.6, 0.8, 0.2, 1, 0)
q<-c(10, 0, 2, 3, 1, 2, 1, 0.5, 1, 1)
r<-c(15,10,4,4,2,2.5,2,1,2,1.5)
s<-c(0,15,6,5,2,2,2,2,2,6)
t<-c(20,16,6,7,5,5,4,6,8,16)
cons.saving=data.frame(p,q,r,s,t)
cons.saving
col_headings<-c('1.0','2.0','3.0','4.0','5.0')
names(cons.saving)<-col_headings
cons.saving
mean_col("cons.saving",'4.0')
var_col=function(dfrm,col) var(get(dfrm)[[col]])
var_col("cons.saving",'5.0')
hist_col=function(dfrm,col) hist(get(dfrm)[[col]],xlab="2%",main=paste("Histogram of","2%"),breaks=5)
hist_col("cons.saving",'2.0')
y=c(p,q,r,s,t)
y
mean(y)
sd(y)
