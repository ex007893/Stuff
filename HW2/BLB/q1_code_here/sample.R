se<-commandArgs(1);
set.seed(as.numeric(se)*9985);
s<-sample(1:1000000,15849,FALSE);
cat(sort(s));

                      
