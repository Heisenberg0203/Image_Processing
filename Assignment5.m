image = imread('waste.jpg')
image = rgb2gray(image)
figure
subplot(1,2,1)
imshow(image)
subplot(1,2,2)
imhist(image)
[m,n] = size(image)
%grayslicing without background
c = zeros(m,n)

% for loop is computationally expensive
c = and(image>190 ,image<245)*255 
figure
imshow(c)

%grayslicing  with background

d1 = double(image)
d2 = zeros(m,n)
d2 = and(image>190 ,image<245)*255 
d2 = d2+d1
d2 = min(d2,255)
figure
imshow(uint8(d2))
