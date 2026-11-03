clc; clear; close all;
img = imread('peppers.png');
sm = imresize(img,0.5,'bilinear');
lg = imresize(img,2,'bilinear');
disp(size(img)); disp(size(sm)); disp(size(lg));
figure; imshow(img); title('Original');
figure; imshow(sm); title('Half');
figure; imshow(lg); title('Double');
% Methods: 'nearest', 'bilinear', 'bicubic'.
