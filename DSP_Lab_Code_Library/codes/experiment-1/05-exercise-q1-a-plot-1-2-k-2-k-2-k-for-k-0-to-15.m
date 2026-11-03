clc; clear; close all;
k = 0:15;
subplot(3,1,1); stem(k,(-1/2).^k); title('(-1/2)^k');
subplot(3,1,2); stem(k,2.^k); title('2^k');
subplot(3,1,3); stem(k,(-2).^k); title('(-2)^k');
