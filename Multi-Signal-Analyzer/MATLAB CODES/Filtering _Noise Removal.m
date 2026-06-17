clc;
clear;
close all;

%% Time Vector

t = 0:0.001:1;

%% Sampling Frequency

Fs = 1000;


%% Signal Frequency

f = 25;


%% Generate Original Signal

signal = sin(2*pi*f*t);



%% Add Noise

noise = 0.8*randn(size(t));

noisy_signal = signal + noise;



%% Create Low Pass Filter

window_size = 20;


filtered_signal = movmean(noisy_signal,window_size);



%% Plot Original Signal


figure;

plot(t,signal);

title('Original Signal');

xlabel('Time (Seconds)');

ylabel('Amplitude');

grid on;



%% Plot Noisy Signal


figure;

plot(t,noisy_signal);

title('Noisy Signal');

xlabel('Time (Seconds)');

ylabel('Amplitude');

grid on;



%% Plot Filtered Signal


figure;

plot(t,filtered_signal);

title('Filtered Signal');

xlabel('Time (Seconds)');

ylabel('Amplitude');

grid on;