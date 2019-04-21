image1 = imread('Assignment5_2.jpg')
image2 = imread('Assignment5_3.jpg')

%addition
add=min(image1+image2,255)
figure
subplot(1,3,1)
imshow(image1)
subplot(1,3,2)
imshow(image2)
subplot(1,3,3)
imshow(add)

%subtraction
sub=max(image2-image1,0)
figure
subplot(1,3,1)
imshow(image1)
subplot(1,3,2)
imshow(image2)
subplot(1,3,3)
imshow(sub)

%multiplication - increasing brightness
figure
subplot(1,2,1)
imshow(image2)
subplot(1,2,2)
imshow(image2*2)

%division - decreasing brightness
figure
subplot(1,2,1)
imshow(image2)
subplot(1,2,2)
imshow(image2/2)

figure
imshow(and(image1,image2)*255)

figure
imshow(or(image1,image2)*255)

figure
imshow(xor(image1,image2)*255)

figure
imshow(not(image1)*255)
