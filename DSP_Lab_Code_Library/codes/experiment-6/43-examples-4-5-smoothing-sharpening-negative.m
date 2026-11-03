g = rgb2gray(imread('peppers.png'));
sm = imfilter(g, fspecial('average',[5 5]));
sh = imfilter(g, fspecial('unsharp'));
ng = 255 - g;
subplot(2,2,1); imshow(g); title('Original');
subplot(2,2,2); imshow(sm); title('Smoothed');
subplot(2,2,3); imshow(sh); title('Sharpened');
subplot(2,2,4); imshow(ng); title('Negative');
