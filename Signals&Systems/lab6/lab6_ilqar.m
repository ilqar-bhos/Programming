clc;
step=0.1;
t=0:step:6;
x=5*t+t.^4;
subplot(311); plot(t,x); title('x[t] = 5t+t**4');

t1=0:step:4;
h1=-2*t1+5;
t2=4+step:step:6;
h2=zeros(size(t2));
h=[h1 h2];
subplot(312); plot(t,h); title('h[t] = -2t+5');

ty=0:step:12;
y = conv(x,h)*step;
subplot(313); plot(ty,y); title('y[t] = x[t] * h[t]');