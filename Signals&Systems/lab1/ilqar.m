clc
step=0.0002; %step
t=0:step:0.02;
x=cos(2*pi*100*t)+cos(2*pi*200*t);
subplot(221); plot(t, x, 'b'); grid on; title('Original signal');
subplot(222); plot(t, x, '.'); grid on; title('Digital signal');
subplot(223); stairs(t, x); grid on; title('Stair Type');
subplot(224); bar(x); grid on; title('Histogram');

average=mean(x);
standardDeviation=std(x);
signal_to_noise_ration_snr=average/standardDeviation;
coefficient_of_variation_cv=100/signal_to_noise_ration_snr;
fprintf('Mean: %.4f\nStandard deviation: %.4f\nSNR: %.4f\nCV: %.4f\n', ...
    average, standardDeviation, signal_to_noise_ration_snr, coefficient_of_variation_cv);