t=0:0.002:10;
f=2;
f = @(t) 0.8*sin(t).*(sin(t)>=0) + 0*(sin(t)<0); %semnalul are valoarea normala pe partea pozitiva, zero cand ar trebui sa ia valori negative
plot(t,f(t))