A = imread('test3.jpg');
figure, imshow(A);


AInv = imcomplement(A);
figure, imshow(AInv);

BInv = imreducehaze(AInv);
figure, imshow(BInv);

B = imcomplement(BInv);

figure, montage({A, B});

% BInv = imreducehaze(AInv, 'Method','approx','ContrastEnhancement','boost');

BImp = imcomplement(BInv);
% figure, montage({A, BImp});

B = imguidedfilter(BImp);
figure, montage({BImp, B});
