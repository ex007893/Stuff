arg<-commandArgs(1);
name<-paste0('subsample',arg,'.txt');
s<-read.table(name,sep=',',header=FALSE);
line<-lm(V41~.,data=s);
cat(line$coefficients);
