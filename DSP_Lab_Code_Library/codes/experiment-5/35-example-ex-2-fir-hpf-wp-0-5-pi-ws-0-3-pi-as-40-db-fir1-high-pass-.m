clc; clear; close all;
wp = 0.5; ws = 0.3;
N = ceil(8/(wp-ws));
wc = (wp+ws)/2;
b = fir1(N,wc,'high',hanning(N+1)); % Hanning gives 44 dB
[h,w] = freqz(b,1);
plot(w/pi,20*log10(abs(h))); grid on; title('Hanning HPF');
