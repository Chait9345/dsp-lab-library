clc; clear; close all;
B = {[0.16 -0.48 0.48 -0.16], [0.634 0 -0.634], [0.634 0 0.634], [1 -5 10]};
A = {[1 0.13 0.52 0.3], [1 0 -0.268], [1 0 0.268], [10 -5 1]};
T = {'(a) HPF','(b) BPF','(c) BSF (notch)','(d) All-pass'};
for i = 1:4
 [h,w] = freqz(B{i},A{i});
 subplot(2,2,i); plot(w/pi,abs(h)); title(T{i}); xlabel('\omega/\pi');
end
% y1 = y[n-1] etc. Missing delays get 0.
% Answers: (a) HPF (b) BPF (c) band-stop (d) all-pass (|H| = 1).
