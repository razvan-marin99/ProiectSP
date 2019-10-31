t1=0:0.002:10;
t2=0:0.02:10;
t3=0:0.2:10;
amp = 0.8;
f=0.3333;
sig1=amp*sin(2*pi*f*t1);
sig2=amp*sin(2*pi*f*t2);
sig3=amp*sin(2*pi*f*t3);
for i=1:length(sig1)
    if sig1(i)<0
        sig1(i)=0;
    end
end
plot(t1,sig1)
