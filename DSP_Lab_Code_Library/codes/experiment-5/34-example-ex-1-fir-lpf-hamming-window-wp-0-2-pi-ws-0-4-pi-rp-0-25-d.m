clc; clear; close all;
wp = 0.2; ws = 0.4;
N = ceil(8/(ws-wp)); % 40
wc = (wp+ws)/2;
b = fir1(N,wc,'low',hamming(N+1));
[h,w] = freqz(b,1);
plot(w/pi,20*log10(abs(h))); grid on; title('Hamming LPF');
