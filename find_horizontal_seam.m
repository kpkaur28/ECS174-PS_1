% Kiranpreet Kaur
% 04/20/2018
% horizontalSeam

function horizontalSeam = find_horizontal_seam(cumulativeEnergyMap)
    horizontalSeam = [];
    maxCol = size(cumulativeEnergyMap, 2);  %get total columns of matrix
    
    % taking min element, starting from last column going left
    for i=maxCol:1
       horizontalSeam(end+1) = find(min(cumulativeEnergyMap(maxCol,:)));
    end
end 