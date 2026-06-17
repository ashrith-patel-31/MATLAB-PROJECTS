clc;
clear;
close all;


% Time Vector

t = 0:0.001:1;


% Message Signal

fm = 5;

message = sin(2*pi*fm*t);



% Carrier Frequency

fc = 50;


% Frequency Sensitivity

kf = 5;


% FM Modulation

FM_signal = sin(2*pi*fc*t + kf*message);



% Plot Message Signal

figure;

subplot(2,1,1);

plot(t,message);

title('Message Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;



% Plot FM Signal

subplot(2,1,2);

plot(t,FM_signal);

title('FM Modulated Signal');

xlabel('Time');

ylabel('Amplitude');

grid on;