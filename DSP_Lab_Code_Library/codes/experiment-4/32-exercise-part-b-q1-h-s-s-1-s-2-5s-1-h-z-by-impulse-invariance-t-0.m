clc; clear; close all;
b = [1 1]; a = [1 5 1];
T = 0.1; Fs = 1/T;
[bz,az] = impinvar(b,a,Fs) % H(z) coefficients
[ha,wa] = freqs(b,a); % analog (rad/s)
[hd,wd] = freqz(bz,az,512,Fs); % digital (Hz)
plot(wa/(2*pi),abs(ha), wd,abs(hd)/T); % /T to match gain
legend('Analog','Digital'); xlabel('Hz'); xlim([0 Fs/2]);
% By hand: poles -0.2087 and -4.7913,
% H(s) = 0.1727/(s+0.2087) + 0.8273/(s+4.7913)
% -> H(z) = sum T*A/(1 - e^(pT) z^-1), with e^(-0.02087) = 0.9793
% and e^(-0.4791) = 0.6193.
% Comment: they match at low frequency, with slight aliasing near Fs/2.
