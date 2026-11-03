clc; clear; close all;
a = [1 -1.81 0.81]; b = [1 0.5 0];
[r,p,k] = residuez(b,a) % (a) r = 7.89 -6.89, p = 1 0.81
[z,p,g] = tf2zp(b,a) % zeros, poles, gain
zplane(b,a); % (b)
[h,w] = freqz(b,a); figure; % (c)
subplot(2,1,1); plot(w,abs(h)); title('Magnitude');
subplot(2,1,2); plot(w,angle(h)); title('Phase');
[hi,ni] = impz(b,a,15); figure; % (d)
stem(ni,hi); title('Impulse response');
n = 0:100; x = 3*cos(n*pi/3); % (e)
y = filter(b,a,x); figure;
subplot(2,1,1); plot(n,x); subplot(2,1,2); plot(n,y);
