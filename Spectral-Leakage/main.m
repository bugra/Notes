signal_frequency = 1;
sampling_frequency = 1000;
time_interval = 10.5;
t = 1:1/sampling_frequency:time_interval;
signal = sin(2*pi*signal_frequency*t);

%% Main Signal
figure(1);
plot(t,signal);
title('Actual Signal');

%% FFT of the signal
number_of_points = ceil((length(t) + 1) / 2);
f = ((0:number_of_points - 1) * sampling_frequency) / length(t);
fft_signal = fft(signal);
figure(2)
subplot(2, 1, 1);
stem(f, abs(fft_signal(1:number_of_points)));
title('Magnitude response');