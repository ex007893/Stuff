se<-commandArgs(1);
set.seed(as.numeric(se)*9985);
s<-sample(1:10000,500,FALSE);
cat(sort(s));

                      
