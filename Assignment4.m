image = imread('waste.jpg')
image = rgb2gray(image)
figure
subplot(1,2,1)
imshow(image)
subplot(1,2,2)
imhist(image)

%adjusting the contrast
adjimage = histeq(image)
figure
subplot(2,2,1)
imshow(image)
subplot(2,2,2)
imhist(image)
subplot(2,2,3)
imshow(adjimage)
subplot(2,2,4)
imhist(adjimage)

%plotting the transformation curve
[J,T] = histeq(image)
figure
plot((0:255)/255,T)