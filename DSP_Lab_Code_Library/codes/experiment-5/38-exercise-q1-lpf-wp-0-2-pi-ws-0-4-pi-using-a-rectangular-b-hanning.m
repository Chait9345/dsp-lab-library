clc; clear; close all;
wp = 0.2; ws = 0.4; N = ceil(8/(ws-wp)); wc = (wp+ws)/2;
b1 = fir1(N,wc,'low',rectwin(N+1));
b2 = fir1(N,wc,'low',hanning(N+1));
b3 = fir1(N,wc,'low',kaiser(N+1,5)); % beta = 5
[h1,w] = freqz(b1,1); h2 = freqz(b2,1,w); h3 = freqz(b3,1,w);
plot(w/pi,20*log10(abs(h1)), w/pi,20*log10(abs(h2)), w/pi,20*log10(abs(h3)));
legend('Rect','Hanning','Kaiser'); grid on; ylim([-100 5]);
% Rect: sharpest transition, worst stopband (~21 dB). Hanning ~44 dB.
% Kaiser: tunable via beta (bigger beta = more attenuation, wider transition).
