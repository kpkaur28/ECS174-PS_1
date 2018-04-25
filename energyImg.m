% Kiranpreet Kaur
% 04/20/2018
% energyImg

function energyImg = energy_img(im)
    double im = imread('inputseamCarvingPrague.jpg', unit8);
    energyImg = sqrt(gradient(x) + gradient(y));
end 



