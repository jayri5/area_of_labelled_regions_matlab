clc; clear all; close all;

%Read Original Image
I=imread('rice.png');
%imshow(I) ;  
%I=rgb2gray(I);
imshow(I) ;  
%Convert to Binary
B=im2bw(I);
                                            
%Fill the holes
C=imfill(B,'holes');
                                                     
 %Label the image
[Label,Total]=bwlabel(C,8);

for i=1:Total
    %Object Number
    num = i;
    [row, col] = find(Label==num);
    %Find Area
    Obj_area=numel(row);
    fprintf('area of region:%d is %f\n',num,Obj_area);
end