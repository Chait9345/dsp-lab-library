clc; clear; close all;
img = imread('peppers.png');
subplot(2,3,1); imshow(img); title('Original');
subplot(2,3,2); imshow(imrotate(img,90)); title('Rotate 90');
subplot(2,3,3); imshow(imrotate(img,180)); title('Rotate 180');
subplot(2,3,4); imshow(flip(img,2)); title('Flip horizontal');
subplot(2,3,5); imshow(flip(img,1)); title('Flip vertical');
% flip(img,2) = left<->right, flip(img,1) = up<->down.
% Works on color images (fliplr/flipud also OK for gray).
