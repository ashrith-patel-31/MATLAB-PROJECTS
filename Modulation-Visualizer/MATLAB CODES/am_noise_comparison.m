clc;
clear;
close all;


% Time Vector

t = 0:0.001:1;


% Message Signal

fm = 5;

message = sin(2*pi*fm*t);



% Carrier Signal

fc = 50;

carrier = sin(2*pi*fc*t);



% AM Modulation

AM_signal = (1 + message).*carrier;



% FM Modulation

kf = 20;

FM_signal = sin(2*pi*fc*t + kf*message);



% Add Noise

noise = 0.5*randn(size(t));


noisy_AM = AM_signal + noise;


noisy_FM = FM_signal + noise;



% Plot AM with Noise


figure;

subplot(2,1,1);

plot(t,AM_signal);

title('Original AM Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



subplot(2,1,2);

plot(t,noisy_AM);

title('AM Signal with Noise');

xlabel('Time');

ylabel('Amplitude');

grid on;



% Plot FM with Noise


figure;

subplot(2,1,1);

plot(t,FM_signal);

title('Original FM Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



subplot(2,1,2);

plot(t,noisy_FM);

title('FM Signal with Noise');

xlabel('Time');

ylabel('Amplitude');

grid on;