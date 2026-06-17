clc;
clear;
close all;

%% Time Vector
t = 0:0.001:1;

%% Frequency
f = 15;

%% Generate Signals

sine_wave = sin(2*pi*f*t);

square_wave = square(2*pi*f*t);

triangle_wave = sawtooth(2*pi*f*t,0.5);

sawtooth_wave = sawtooth(2*pi*f*t);


%% Plot Original Signals

figure;

subplot(4,1,1);
plot(t,sine_wave);
title('Original Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


subplot(4,1,2);
plot(t,square_wave);
title('Original Square Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


subplot(4,1,3);
plot(t,triangle_wave);
title('Original Triangle Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


subplot(4,1,4);
plot(t,sawtooth_wave);
title('Original Sawtooth Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;



%% Generate Noise

noise = 0.5 * randn(size(t));


%% Add Noise To Signals

noisy_sine = sine_wave + noise;

noisy_square = square_wave + noise;

noisy_triangle = triangle_wave + noise;

noisy_sawtooth = sawtooth_wave + noise;



%% Plot Noisy Signals

figure;

subplot(4,1,1);
plot(t,noisy_sine);
title('Noisy Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


subplot(4,1,2);
plot(t,noisy_square);
title('Noisy Square Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


subplot(4,1,3);
plot(t,noisy_triangle);
title('Noisy Triangle Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


subplot(4,1,4);
plot(t,noisy_sawtooth);
title('Noisy Sawtooth Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;