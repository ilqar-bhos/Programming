clc;
fm = 10e3; %signal frequency
nCyl = 5; %number of cycles
fs = 500e3; %sampling frequency for continuous signal
% Ts = 1/fs
t = 0:1/fs:nCyl*1/fm;
x = cos(2*pi*fm*t);
subplot(221);  plot(t,x,"b",LineWidth=3);grid on; title("Continuous Signal");

%2nd task
fs1 = 30e3;
t1 = 0:1/fs1:nCyl*1/fm;
x1 = cos(2*pi*fm*t1);
subplot(222);  plot(t,x,"b",LineWidth=3);grid on;
hold on;
subplot(222);  plot(t1,x1,"g",LineWidth=2);grid on; title("Sampling signal");

fs2 = 50e3;
t2 = 0:1/fs2:nCyl*1/fm;
x2 = cos(2*pi*fm*t2);
subplot(223);  plot(t,x,"b",LineWidth=3);grid on;
hold on;
subplot(223);  plot(t2,x2,LineWidth=2);grid on; title("Sampling signal");

%3rd task
fs3 = 18e3;
t3 = 0:1/fs3:nCyl*1/fm;
x3 = cos(2*pi*fm*t3);
subplot(224);  plot(t,x,"b",LineWidth=3);grid on;
hold on;
subplot(224);  plot(t3,x3,"r",LineWidth=2);grid on; title("Aliasing signal");