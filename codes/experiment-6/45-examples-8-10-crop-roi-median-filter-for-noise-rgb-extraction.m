img = imread('peppers.png');
imshow(img); roi = imcrop; figure; imshow(roi); % drag box, double-click
g = rgb2gray(img);
nz = imnoise(g,'salt & pepper',0.05);
md = medfilt2(nz,[3 3]);
figure;
subplot(1,3,1); imshow(g); subplot(1,3,2); imshow(nz); subplot(1,3,3); imshow(md);
figure;
subplot(2,2,1); imshow(img);
subplot(2,2,2); imshow(img(:,:,1)); title('Red');
subplot(2,2,3); imshow(img(:,:,2)); title('Green');
subplot(2,2,4); imshow(img(:,:,3)); title('Blue');
