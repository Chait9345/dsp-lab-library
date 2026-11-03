clc; clear; close all;
wp = 0.2*pi; ws = 0.3*pi; rp = 1; rs = 15;
[N,wc] = buttord(wp,ws,rp,rs,'s');
[bs,as] = butter(N,wc,'s');
[bz,az] = impinvar(bs,as); % T = 1
[h,w] = freqz(bz,az);
plot(w/pi,20*log10(abs(h))); grid on; xlabel('\omega/\pi');
