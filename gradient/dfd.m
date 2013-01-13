function rtn= dfd(c)
x=c(1) ;
y=c(2) ;
rtn = [exp(x+3.*y-0.1)+exp(x-3.*y-0.1)-exp(-x-0.1) 3.*exp(x+3.*y-0.1)-3.*exp(x-3.*y-0.1)] ;
