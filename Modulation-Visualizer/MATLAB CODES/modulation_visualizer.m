clc;
clear;
close all;

% Time Vector

t = 0:0.001:1;


% Message Signal

fm = 5;

message = sin(2*pi*fm*t);



%% Carrier Signal

fc = 50;

carrier = sin(2*pi*fc*t);



% Plot Message Signal


figure;

subplot(2,1,1);

plot(t,message);

title('Message Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



% Plot Carrier Signal


subplot(2,1,2);

plot(t,carrier);

title('Carrier Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;