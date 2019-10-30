t1=0:0.002:10;
t2=0:0.02:10;
t3=0:0.2:10;
offset=0;
amp=1.5;
freq=0.2;
tr_wav1=offset+amp*sawtooth(2*pi*freq.*t1,0.5)-0.5; %facem ca varful functiei sawtooth sa fie la mijloc (0.5) obtinand astfel un semnal triunghiular
tr_wav2=offset+amp*sawtooth(2*pi*freq.*t2,0.5)-0.5; 
tr_wav3=offset+amp*sawtooth(2*pi*freq.*t3,0.5)-0.5;
amplitude = max(tr_wav1(:)) - min(tr_wav1(:)); %aflam valoarea amplitudinii peak-to-peak
m=max(tr_wav1);
f=min(t(tr_wav1==m)); %aflam valoarea lui t atunci cand semnalul are amplitudine maxima, folosim min pentru a lua doar o valoare
slope=amplitude/f %calculam panta cu formula (y-y0)/(x-x0)
figure(1)
plot(t1,tr_wav1)
figure(2)
plot(t2,tr_wav2)
figure(3)
plot(t3,tr_wav3)