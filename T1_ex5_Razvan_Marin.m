t1 = 0:0.002:10;
t2 = 0:0.02:10;
t3 = 0:0.2:10;
f=0.25;
amp=1.5;
 y1= abs(amp*sin(2*pi*f*t1)); %luam toate valorile functiei in modul, deci semnalul devine redresat dubla alternanta
 y2= abs(amp*sin(2*pi*f*t2));
 y3= abs(amp*sin(2*pi*f*t3));
 figure(1)
 plot(t1,y1)
 figure(2)
 plot(t2,y2)
 figure(3)
 plot(t3,y3)