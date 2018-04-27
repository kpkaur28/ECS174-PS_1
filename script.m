% Kiranpreet Kaur
% Zaryab Farooq
% ECS 174
% Script

<<<<<<< HEAD

% Part 1
im = (uint8(double(imread('inputSeamCarvingPrague.jpg'))));
energyImage = energy_img(im); 
figure(1);
imagesc(energyImage);

%

% Part 2
seamDirection = 'VERTICAL';
cumulativeEnergyMap = cumulative_min_energy_map(energyImage, seamDirection);
figure(2);
imagesc(cumulativeEnergyMap);

seamDirection = 'HORIZONTAL';
cumulativeEnergyMap = cumulative_min_energy_map(energyImage, seamDirection);
figure(3);
imagesc(cumulativeEnergyMap);

% Part 3
verticalSeam = find_vertical_seam(cumulativeEnergyMap);

% Part 4
=======
run('energy_img.m'); 
run('cumulative_min_energy_map.m'); 

% Part 1
im = imread('inputSeamCarvingPrague.jpg');
energyImage = energy_img(im); 
Figure(1);
imagesc(energyImage);
im = imread('inputSeamCarvingMall.jpg)');
energyImage = energy_img(im);
Figure(2);
imagesc(energyImage);

% Part 2
seamDirection = 'VERTICAL';
energyMap = cumulative_min_energy_map(energyImg, seamDirection);
Figure(3);
imagesc(energyMap);

seamDirection = 'HORZONTAL';
energyMap = cumulative_min_energy_map(energyImg, seamDirection);
Figure(4);
imagesc(energyMap);

% Part 3


>>>>>>> 5feea18bc5bbba744c5f528e19761f932ed92d8f


