img = imread('../../Desktop/Orignal.png')
size(img)
figure
imshow(img)
imwrite(img,'matfile.png')
grayimag = rgb2gray(img)
figure
imshow(grayimag)
figure
imhist(grayimag)
figure
imadjust(grayimag)
adjustedimage = imadjust(grayimag)
figure
imshow(adjustedimage)
bwimage = im2bw(grayimag)
figure
imshow(bwimage)
figure
imagesc(grayimag)
figure
imagesc(bwimage)
imfinfo('../../Desktop/Orignal.png')