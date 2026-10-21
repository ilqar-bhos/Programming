clc;
fm = 10e3;
nCyl = 10; 
fs = 500e3; 
t = 0:1/fs:nCyl*1/fm;
x = cos(2*pi*fm*t);
subplot(411);  plot(t,x,"b",LineWidth=3);grid on; title("Continuous Signal");

%Task 2
fs1 = 30e3;
t1 = 0:1/fs1:nCyl*1/fm;
x1 = cos(2*pi*fm*t1);
subplot(412);  plot(t,x,"b",LineWidth=3);grid on;
hold on; stem(t1,x1,'r', LineWidth=2);
grid on; 
title("Sampling signal");

fs2 = 50e3;
t1 = 0:1/fs2:nCyl*1/fm;
x1 = cos(2*pi*fm*t1);
subplot(413);  plot(t,x,"b",LineWidth=3);grid on;
hold on; stem(t1,x1,'g', LineWidth=2); grid on; title("Sampling signal");

fs3 = 13e3;
t1 = 0:1/fs3:nCyl*1/fm;
x1 = cos(2*pi*fm*t1);
subplot(414);  plot(t,x,"b",LineWidth=3);grid on;
hold on; plot(t1,x1,'r', LineWidth=2); grid on; title("Aliasing signal");