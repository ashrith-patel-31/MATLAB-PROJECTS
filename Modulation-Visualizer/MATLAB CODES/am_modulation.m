clc;
clear;
close all;
t = 0:0.001:1;

% Message Signal

fm = 5;

message = sin(2*pi*fm*t);



% Carrier Signal

fc = 50;

carrier = sin(2*pi*fc*t);



% AM Modulation

amplitude = 1;

AM_signal = (1 + amplitude*message).*carrier;



% Plot Message Signal

figure;

subplot(3,1,1);

plot(t,message);

title('Message Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



% Plot Carrier Signal

subplot(3,1,2);

plot(t,carrier);

title('Carrier Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



% Plot AM Signal

subplot(3,1,3);

plot(t,AM_signal);

title('AM Modulated Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;