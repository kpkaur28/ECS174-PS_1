% Kiranpreet Kaur
% Zaryab Farooq
% ECS 174
% Script

% Part 1
energyImage = energy_img(imread('inputSeamCarvingPrague.jpg')); 
Figure(1);
imagesc(energyImage);
energyImage = energy_img(imread('inputSeamCarvingMall.jpg)'));
Figure(2);
imagesc(energyImage);
seamDirection = 'VERTICAL';
cumulative_min_energy_map(energImg, seamDirection);
Figure(3);
imagesc(cumulative_min_energy_map); 
seamDirection = 'HORZONTAL';
cumulative_min_energy_map(energyImg, seamDirection);
Figure(4);
imagesc(cumulative_min_energy_map);
