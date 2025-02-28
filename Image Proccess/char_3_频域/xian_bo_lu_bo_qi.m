clear all;close all;
I = imread('./pics/Fig4.jpg');
figure;imshow(I);
F = fft2(I);
F = fftshift(F);
[M , N ] = size(F);
h = ones(M,N);
h(M/2+1,N/2+1)=0;
figure;mesh(h);
result = h.*F;
result = ifftshift(result);
I2 = ifft2(result);
I3 = uint8(real(I2));
figure;imshow(I3);