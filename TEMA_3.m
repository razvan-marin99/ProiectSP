t1=0:0.002:5;
t2=0:0.02:5;
t3=0:0.2:5;
lvl1=[-1 1];
lvl2=[-3 -1 1 3];
lvl3=[-5 -3 -1 1 3 5];
lvl4=[-7 -5 -3 -1 1 3 5 7];
figure(1)
subplot(3,1,1)
hold on
for i=0:0.25:5
    x=datasample(lvl1,1);
    plot(t1, x*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2)
hold on
for i=0:0.25:5
    x=datasample(lvl1,1);
    plot(t2, x*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3)
hold on
for i=0:0.25:5
    x=datasample(lvl1,1);
    plot(t3, x*rectpuls(t3-i,0.25))
end
hold off

figure(2)
subplot(3,1,1)
hold on
for i=0:0.25:5
    x=datasample(lvl2,1);
    plot(t1, x*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2)
hold on
for i=0:0.25:5
    x=datasample(lvl2,1);
    plot(t2, x*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3)
hold on
for i=0:0.25:5
    x=datasample(lvl2,1);
    plot(t3, x*rectpuls(t3-i,0.25))
end
hold off

figure(3)
subplot(3,1,1)
hold on
for i=0:0.25:5
    x=datasample(lvl3,1);
    plot(t1, x*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2)
hold on
for i=0:0.25:5
    x=datasample(lvl3,1);
    plot(t2, x*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3)
hold on
for i=0:0.25:5
    x=datasample(lvl3,1);
    plot(t3, x*rectpuls(t3-i,0.25))
end
hold off

figure(4)
subplot(3,1,1)
hold on
for i=0:0.25:5
    x=datasample(lvl4,1);
    plot(t1, x*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2)
hold on
for i=0:0.25:5
    x=datasample(lvl4,1);
    plot(t2, x*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3)
hold on
for i=0:0.25:5
    x=datasample(lvl4,1);
    plot(t3, x*rectpuls(t3-i,0.25))
end
hold off


