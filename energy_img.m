% Kiranpreet Kaur
% Zaryab Farooq
% 04/20/2018
% energyImg

function energyImg = energy_img(im)
    im = (uint8(double(imread('inputSeamCarvingPrague.jpg'))));
    im = rgb2gray(im);  %converting to grayscale
    [dx, dy] = imgradient(im);  % get the dx and dy
    energyImg = double(sqrt(dx.^2 + dy.^2));  % energy image from the formulae
    imagesc(energyImg)
end 



