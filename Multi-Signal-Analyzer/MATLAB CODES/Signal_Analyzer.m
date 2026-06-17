clc;
clear;
close all;

% Time vector
t = 0:0.001:1;

% Frequency
f = 25;

% Signal Generation
sine_wave = sin(2*pi*f*t);

square_wave = square(2*pi*f*t);

triangle_wave = sawtooth(2*pi*f*t,0.5);

sawtooth_wave = sawtooth(2*pi*f*t);

% Plot Signals

figure;

subplot(4,1,1);
plot(t,sine_wave);
title('Sine Wave');
grid on;

subplot(4,1,2);
plot(t,square_wave);
title('Square Wave');
grid on;

subplot(4,1,3);
plot(t,triangle_wave);
title('Triangle Wave');
grid on;

subplot(4,1,4);
plot(t,sawtooth_wave);
title('Sawtooth Wave');
grid on;