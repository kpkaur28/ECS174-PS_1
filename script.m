% Kiranpreet Kaur
% Zaryab Farooq
% ECS 174
% Script

% Part 1
im1 = imread('inputSeamCarvingPrague.jpg');
im = im1;
energyImage1 = energy_img(im1); 
figure(1);
imagesc(energyImage1);
colormap gray;
im2 = imread('inputSeamCarvingMall.jpg');
im = im2;
energyImage2 = energy_img(im2);
figure(2);
imagesc(energyImage2);
colormap gray;

% Part 2
seamDirection = 'VERTICAL';
im = imread('inputSeamCarvingPrague.jpg');
energyImg = energy_img(im);
energyMap = cumulative_min_energy_map(energyImg, seamDirection);
figure(3);
imagesc(energyMap);

seamDirection = 'HORZONTAL';
im = imread('inputSeamCarvingPrague.jpg');
energyImg = energy_img(im);
energyMap = cumulative_min_energy_map(energyImg, seamDirection);
figure(4);
imagesc(energyMap);

% Part 3
seamDirection = 'VERTICAL';
im = imread('inputSeamCarvingPrague.jpg');
energyImg = energy_img(im);
cumulativeEnergyMap = cumulative_min_energy_map(energyImg, seamDirection);
verticalSeam = find_vertical_seam(cumulativeEnergyMap);
imagesc(verticalSeam);
