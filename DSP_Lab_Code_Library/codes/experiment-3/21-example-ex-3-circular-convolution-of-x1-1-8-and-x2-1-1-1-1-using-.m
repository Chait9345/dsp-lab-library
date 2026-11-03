clc; clear; close all;
x1 = [1 2 3 4 5 6 7 8]; x2 = [1 1 1 1];
N = max(length(x1),length(x2));
y = cconv(x1,x2,N) % direct
z = ifft(fft(x1,N).*fft(x2,N)) % DFT-IDFT
N = length(x1)+length(x2)-1; % for LINEAR conv
yy = conv(x1,x2)
zz = ifft(fft(x1,N).*fft(x2,N))
