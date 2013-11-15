If you not fimiliar with such code maybe this will help you.
The skeleton is run.pl and in that script it will call two R script as sample.R and fit.R during the runtime of itself.(The R script is function is just same as their name) the command inside ` ` will be sent to the bash to run so I'm afraid you could not run it on your own laptop(I think it will be fine with UNIX-series os). 
The sample.R will store many subsample on the harddisc(actually it's a big waste since subsample with same s_index is identical yet with the parallel work I could not find a better way )
the output is just the same so take it easy, you can run it on your own gauss, it should be well.
At last, highly recommend you to know something of Perl, it's the most magic language I have ever use :) 
