clc; clear; close all;
Fs = 2000;
wp = [400 500]/(Fs/2); ws = [300 600]/(Fs/2);
wc = (wp+ws)/2;
N = ceil(8/min(abs(wp-ws))); % 80
b1 = fir1(N,wc,'bandpass',hamming(N+1));
b2 = fir1(N,wc,'bandpass',kaiser(N+1,3.4)); % beta ~3.4 for 40 dB
[h1,f] = freqz(b1,1,512,Fs); h2 = freqz(b2,1,512,Fs);
plot(f,20*log10(abs(h1)), f,20*log10(abs(h2)));
legend('Hamming','Kaiser'); xlabel('Hz'); grid on;
% Kaiser beta for As dB (21 < As < 50):
% beta = 0.5842(As-21)^0.4 + 0.07886(As-21).
