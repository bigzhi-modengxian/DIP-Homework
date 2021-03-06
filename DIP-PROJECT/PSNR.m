function [ output ] = PSNR(input_img1, input_img2)
% Calculte value of PSNR of two images with same sizes
% For gray image : directly calculate
% For RGB image : Firstly, translate it into YUV, and calculate the PSNR of
% Y
% By default : gray level : 256, which indicate that [0 255]
MAX1 = 255;
% pass the check of legal of input_img
% Be careful about the type convension
input_img1 = double(input_img1);
input_img2 = double(input_img2);

[M, N] = size(input_img1);
% discard_boundary = 3;
% input_img1 = input_img1(discard_boundary + 1:M-discard_boundary, discard_boundary+1:N-discard_boundary);
% input_img2 = input_img2(discard_boundary + 1:M-discard_boundary, discard_boundary+1:N-discard_boundary);
% [M, N] = size(input_img1);
MSE = sum(sum((input_img1 - input_img2) .^ 2)) / (M * N);
output = 10 * log10(MAX1 .^ 2 / MSE);

end

