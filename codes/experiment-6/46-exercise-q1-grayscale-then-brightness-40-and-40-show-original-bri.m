clc; clear; close all;
g = rgb2gray(imread('peppers.png'));
br = g + 40; % uint8 clips at 255
dk = g - 40; % clips at 0
subplot(1,3,1); imshow(g); title('Original');
subplot(1,3,2); imshow(br); title('Brighter');
subplot(1,3,3); imshow(dk); title('Darker');
