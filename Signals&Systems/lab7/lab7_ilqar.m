clc;
fs=3*120;
ts=1/fs;
t=0:ts:1;
n=length(t);
noise=rand(1,length(t));
x=sin(2*pi*50*t) + 0.7*sin(2*pi*100*t)+0.5*sin(2*pi*120*t)+noise;
subplot(711); plot(t,x);title("My Input Signal");
X=fft(x,n);
fd=fs*(0:n/2-1)/n;

subplot(712); plot(fd,X(1:n/2));title("My fft Signal");
subplot(713); plot(fd,abs(X(1:n/2)));title("My abs fft Signal");
subplot(714); plot(fd,angle(X(1:n/2)));title("My angle fft Signal");

    
X2 = zeros(1, n);
for index = 1:n
    X2(index)=x(index)*(cos(2*pi*index/n)+1i*cos(2*pi*index/n));
end
subplot(715); plot(fd,X2(1:n/2));title("My dft Signal");
subplot(716); plot(fd,abs(X2(1:n/2)));title("My abs dft Signal");
subplot(717); plot(fd,angle(X2(1:n/2)));title("My angle dft Signal");