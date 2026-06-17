clc;
clear;
close all;

%% Time Vector
t = 0:0.001:1;

Fs = 1000;  % Sampling frequency

%% Original Signal
f = 5;
signal = sin(2*pi*f*t);

%% Add Noise
noise = 0.8*randn(size(t));
noisy_signal = signal + noise;

%% Low Pass Filter (Moving Average)
filter_size = 20;
filtered_signal = movmean(noisy_signal, filter_size);

%% Time Domain Plots
figure;

subplot(3,1,1);
plot(t, signal);
title('Original Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, noisy_signal);
title('Noisy Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, filtered_signal);
title('Filtered Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

%% FFT Analysis

N = length(t);
freq = (0:N-1)*(Fs/N);

FFT_noisy = abs(fft(noisy_signal));
FFT_filtered = abs(fft(filtered_signal));

%% Frequency Domain Plot
figure;

subplot(2,1,1);
plot(freq, FFT_noisy);
title('FFT of Noisy Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

subplot(2,1,2);
plot(freq, FFT_filtered);
title('FFT of Filtered Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;