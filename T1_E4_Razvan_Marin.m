z=[0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0];
n=0:20;
m=(-5:15);
subplot(2,1,1),stem(z,n),subplot(2,1,2),stem(z,m)
n=0:20;
t=10-n;
for i=1:1:21
if t(i)<0
t(i)=-t(i);
end
end
t;
plot(n,t)
m=-15:25;
x1=sin(pi*n/17);
p=0:50;
x2=cos(pi*n/sqrt(23));
plot(m,x1,p,x2)
subplot(2,1,1),plot(x1),subplot(2,1,2),plot(x2)
subplot(2,1,1),stem(x1),subplot(2,1,2),stem(x2)