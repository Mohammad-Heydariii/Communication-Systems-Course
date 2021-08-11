 function Errors= MSE(m,x2_sample,Ac,fs) 
 
n=0;
for fc=-500:10:500 
    n=n+1;
   xc_inLoop=DSP_module(m,fc,Ac) 
   t3=-1:2/fs:1-2/fs;
   xc_sample_generator=double(xc_inLoop(t3));
   xc_sample_generator(301)=0;
   [z,y]=DSP_demodule(xc_sample_generator,fc,Ac,fs) 
   Errors(n)=immse(x2_sample,z)
end


end