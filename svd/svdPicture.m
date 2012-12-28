function svdPicture()
g = imread('duo.jpg');
%set it to black-white style
g0 = 0.2986.* g(:,:,1) + 0.5870.* g(:,:,2) + 0.1140.* g(:,:,3);
%convert the type to double
g0 = im2double(g0);
figure(1);
per = 50;
imshow(percentSVD(g0, per));  
disp(norm(percentSVD(g0, per),'fro') / norm(g0, 'fro'));
figure(2);
per = 25;
imshow(percentSVD(g0, per));  
disp(norm(percentSVD(g0, per),'fro') / norm(g0, 'fro'));

