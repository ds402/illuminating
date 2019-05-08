%import image
clear all;
close all;
clc;
obj = imread('ball.jpg');
red=obj(:,:,1);
green=obj(:,:,2);
blue=obj(:,:,3);

subplot(3,2,1);
imshow(obj);
title('original image');
subplot(3,2,2);
imshow(red);
title('red');
subplot(3,2,3);
imshow(green);
title('green');

level= 0.75;
bw2 = im2bw(red,level);
subplot(3,2,[5,6]);
imshow(bw2);
fill= imfill(bw2,'holes');
clea=imclearborder(fill);
se = strel('disk',7);
open=imopen(fill,se);
diameter = regionprops(open, 'majoraxislength')
subplot(3,2,4);
title('clear');
imshow(obj);
d=imdistline;

