clc;
clear;
close all;

%% Time Vector

t = 0:0.001:1;

%% Sampling Frequency

Fs = 1000;


%% Signal Frequency

f = 25;


%% Generate Signal

sine_wave = sin(2*pi*f*t);


%% Add Noise

noise = 0.5*randn(size(t));

noisy_signal = sine_wave + noise;



%% Plot Time Domain Signal

figure;

plot(t,noisy_signal);

title('Noisy Signal - Time Domain');

xlabel('Time (Seconds)');

ylabel('Amplitude');

grid on;



%% FFT Calculation

N = length(noisy_signal);


Y = fft(noisy_signal);


%% Frequency Axis

frequency = (0:N-1)*(Fs/N);



%% Plot Frequency Spectrum


figure;

plot(frequency,abs(Y));


title('FFT Frequency Spectrum');

xlabel('Frequency (Hz)');

ylabel('Magnitude');

grid on;