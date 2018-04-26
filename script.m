% Kiranpreet Kaur
% Zaryab Farooq
% ECS 174
% Script

run('energy_img.m'); 
run('cumulative_min_energy_map.m'); 

% Part 1
energyImage = energy_img(imread('inputSeamCarvingPrague.jpg')); 
Figure(1);
imagesc(energyImage);
energyImage = energy_img(imread('inputSeamCarvingMall.jpg)'));
Figure(2);
imagesc(energyImage);

% Part 2
seamDirection = 'VERTICAL';
energyMap = cumulative_min_energy_map(energImg, seamDirection);
Figure(3);
imagesc(energyMap);

seamDirection = 'HORZONTAL';
energyMap = cumulative_min_energy_map(energyImg, seamDirection);
Figure(4);
imagesc(energyMap);

% Part 3




