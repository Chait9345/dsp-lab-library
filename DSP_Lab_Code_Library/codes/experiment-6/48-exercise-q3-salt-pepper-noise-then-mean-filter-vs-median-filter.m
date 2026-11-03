clc; clear; close all;
g = rgb2gray(imread('peppers.png'));
nz = imnoise(g,'salt & pepper',0.05);
mn = imfilter(nz, fspecial('average',[3 3]));
md = medfilt2(nz,[3 3]);
subplot(2,2,1); imshow(g); title('Original');
subplot(2,2,2); imshow(nz); title('Noisy');
subplot(2,2,3); imshow(mn); title('Mean filter');
subplot(2,2,4); imshow(md); title('Median filter');
% Median wins: it removes the dots and keeps edges sharp.
% Mean only smears the dots and blurs.
