clc;
n=64000;
mean=150;
sigma=4;
x=rand(1,n);
subplot(211);plot(x(1:100));grid on;title('Random signal');
subplot(212);histogram(x,200);grid on;title('Histogram of the Random signal');
figure
x_sum=0;
for index = 1:12
    x_sum=x_sum+rand(1,n);
    subplot(4,3,index);
    histogram(x_sum,200);
end
figure
x_res=(x_sum-6)*sigma + mean;
subplot(211);plot(x_res(1:100));grid on;title('Random signal');
subplot(212);histogram(x_res,200);grid on;title('Histogram of the Random signal');


%2nd method
R1 = rand(1,n);
R2 = rand(1,n);
y = sqrt(-2 * log(R1)) .* cos(2 * pi * R2);
y_res = y*sigma + mean;
subplot(211);plot(y_res(1:100),'green');grid on;title('Random signal');
subplot(212);histogram(y_res,200);grid on;title('Histogram of the Random signal');