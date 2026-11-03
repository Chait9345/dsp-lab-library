img = imread('peppers.png');
imshow(img); disp(size(img)); disp(class(img));
g = rgb2gray(img);
figure; imshow(g); figure; imhist(g);
eq = histeq(g);
figure;
subplot(2,2,1); imshow(g); title('Original');
subplot(2,2,2); imshow(eq); title('Equalized');
subplot(2,2,3); imhist(g); subplot(2,2,4); imhist(eq);
