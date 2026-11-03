img = im2double(rgb2gray(imread('peppers.png')));
lg = log(1+img); lg = lg/max(lg(:)); % normalize
gm = img.^0.5; % gamma = 0.5
bl = imfilter(img, fspecial('gaussian',[5 5],1));
subplot(2,2,1); imshow(img); title('Original');
subplot(2,2,2); imshow(lg); title('Log');
subplot(2,2,3); imshow(gm); title('Gamma 0.5');
subplot(2,2,4); imshow(bl); title('Gaussian blur');
