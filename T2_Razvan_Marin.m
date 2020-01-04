clear 
clc

t1=0:0.01:100;
offset = 0;
amp = 0.5;
T=40;
N=50;
freq = 1/T;
duty = 13/40*100;
w0=2*pi/T;
sq_wav= offset+amp*square(2*pi*freq.*t1,duty)+0.5;
subplot(3,1,1)
plot(t1,sq_wav)
title('Semnal initial dreptunghilar rezolutie 10 ms')


syms t;
f=heaviside(t)-heaviside(t-13);
a0_sym=1/T*int(f,t,0,T);
a0=double(a0_sym)

for n=1:N
    a_sym(n) = 2/T*int(f*cos(n*w0*t),t,0,T);
    b_sym(n) = 2/T*int(f*sin(n*w0*t),t,0,T);
    
    a(n)=double(a_sym(n));
    b(n)=double(b_sym(n));
    
    
    
end

tnum=0:0.01:100;
fnum=a0;

for n=1:N
    harmonic=a(n)*cos(n*w0*tnum)+b(n)*sin(n*w0*tnum);
    fnum=fnum+harmonic;
    subplot(3,1,2)
    
    plot(t1,sq_wav,'blue','LineWidth',2)
    title('Semnal reconstruit')
    hold on
    plot(tnum,fnum,'red')
    hold off
end




for n=1:50
        An(n) = sqrt(a(n)^2+b(n)^2);
end

A = [fliplr(An) a0 An];

k = -50:1:50;
subplot(3,1,3)
stem(k,A,'blue')
title('Spectru')
hold on
plot(k,A,'red')


% Am construit un semnal dreptunghiular cu 
% perioada 40 s si duty cycle 13/40.
% Am impartit semnalul in mai multe semnale sinusoidale.
% Am reconstruit semnalul initial adunand semnalel
% sinusoidale.
% Am creat spectrul de amplitudini.

    




