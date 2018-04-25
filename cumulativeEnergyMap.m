% Kiranpreet Kaur
% 04/20/2018
% cumulativeEnergyMap

function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)
    cumulativeEnergyMap = energyImg(i,j) + min(cumulativeEnergyMap(i-1,j-1),cumulativeEnergyMap(i-1,j), cumulativeEnergyMap(i-1,j+1)); 
end