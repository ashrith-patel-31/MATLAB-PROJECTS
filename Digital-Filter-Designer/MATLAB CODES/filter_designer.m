clc;
clear;
close all;


% Time Vector

t = 0:0.001:1;


% Sampling Frequency

Fs = 1000;


% Original Signal

f = 5;

signal = sin(2*pi*f*t);



% Add Noise

noise = 0.8*randn(size(t));

noisy_signal = signal + noise;



% Plot Original Signal

figure;

subplot(2,1,1);

plot(t,signal);

title('Original Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



% Plot Noisy Signal

subplot(2,1,2);

plot(t,noisy_signal);

title('Noisy Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;