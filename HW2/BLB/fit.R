arg<-commandArgs(1);
name<-paste0('subsample',arg,'.txt');
s<-read.table(name,sep=',',header=FALSE);
vec=(rmultinom(1,1000000,rep(1,15849)))[ ,1];
line<-lm(V1001~.,data=s,weight=vec);
cat(line$coefficients);
