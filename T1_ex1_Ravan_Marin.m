freq1=0.5;
offset=0;
amp1=0.75;
duty1=25;
t1=0:0.002:10;
t2=0:0.02:10;
t3=0:0.2:10;
sq_wav1=offset+amp1*square(2*pi*freq1.*t1,duty1)-0.25; %creeam semnalul, ii dam aplitudinea 0.75, apoi il scadem cu 0.25 pt a avea varful de jos la -1 si cel de sus la 0.5
sq_wav2=offset+amp1*square(2*pi*freq1.*t2,duty1)-0.25;
sq_wav3=offset+amp1*square(2*pi*freq1.*t3,duty1)-0.25;
figure(1)
plot(t1,sq_wav1)
figure(2)
plot(t2,sq_wav2)
figure(3)
plot(t3,sq_wav3)
grid







