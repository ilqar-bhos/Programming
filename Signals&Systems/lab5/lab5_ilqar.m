clc;
t= linspace(-pi,pi,1000);
x=(1+0.9.*cos(8.*t)+sin(3.*t+10.*t.^2));
subplot(5,1,1); plot(t,x,'-'); grid on; title('Signal');
%impulse decomposition
%20th sample 
x1=x;
for i=1:length(x)
    x1(i)=0;
end
x1(20)=x(20);
subplot(5,1,2); plot(t,x1,'-'); grid on; title('Signal 20th sample');
x1(20)=0;
x1(40)=x(40);
subplot(5,1,3); plot(t,x1,'-'); grid on; title('Signal 40th sample');
x1(20)=0;
x1(40)=0;
x1(100)=x(100);
subplot(5,1,4); plot(t,x1,'-'); grid on; title('Signal 100th sample');

%step decomposition
%20th sample 
x1=x;
sample=10;
for i=1:(sample-1)
    x1(i)=0;
end
x1(sample:length(x))=x(sample)-x(sample-1);
subplot(5,1,2); plot(t,x1,'-'); grid on; title('Signal 10th sample');
x1=x;
sample=40;
for i=1:(sample-1)
    x1(i)=0;
end
x1(sample:length(x))=x(sample)-x(sample-1);
subplot(5,1,3); plot(t,x1,'-'); grid on; title('Signal 40th sample');
x1=x;
sample=100;
for i=1:(sample-1)
    x1(i)=0;
end
x1(sample:length(x))=x(sample)-x(sample-1);
subplot(5,1,4); plot(t,x1,'-'); grid on; title('Signal 100th sample');

%Even and odd parity
xe=x;
len=length(x);
for i=1:(length(x))
    xe(i)=(x(i)+x(len-i+1))/2;
end
subplot(5,1,2); plot(t,xe,'-'); grid on; title('Even parity');
xe=x;
len=length(x);
for i=1:(length(x))
    xe(i)=(x(i)-x(len-i+1))/2;
end
subplot(5,1,3); plot(t,xe,'-'); grid on; title('Odd parity');


%Interlaced Decomposition
xe=x;
for i=1:2:length(x)
    xe(i)=x(i);
end
for i=2:2:length(x)
    xe(i)=0;
end
subplot(5,1,4); plot(t,xe,'-'); grid on; title('Interlaced Decomposition even');
xe=x;

for i=1:2:length(x)
    xe(i)=0;
end
for i=2:2:length(x)
    xe(i)=x(i);
end
subplot(5,1,5); plot(t,xe,'-'); grid on; title('Interlaced Decomposition odd');