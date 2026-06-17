clc;
clear;
close all;


%% Time Vector

t = 0:0.001:1;


%% Sampling Frequency

Fs = 1000;


%% Original Signal

f = 5;

signal = sin(2*pi*f*t);



%% Add Noise

noise = 0.8*randn(size(t));

noisy_signal = signal + noise;



%% Low Pass Filter

filter_size = 10;


filtered_signal = movmean(noisy_signal,filter_size);



%% Plot Original Signal

figure;

subplot(3,1,1);

plot(t,signal);

title('Original Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



%% Plot Noisy Signal


subplot(3,1,2);

plot(t,noisy_signal);

title('Noisy Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



%% Plot Filtered Signal


subplot(3,1,3);

plot(t,filtered_signal);

title('Filtered Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;