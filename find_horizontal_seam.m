% Kiranpreet Kaur
<<<<<<< HEAD
=======
% Zaryab Farooq
>>>>>>> 5feea18bc5bbba744c5f528e19761f932ed92d8f
% 04/20/2018
% horizontalSeam

function horizontalSeam = find_horizontal_seam(cumulativeEnergyMap)
<<<<<<< HEAD
    horizontalSeam = [];
    maxCol = size(cumulativeEnergyMap, 2);  %get total columns of matrix
    
    % taking min element, starting from last column going left
    for i=maxCol:1
       horizontalSeam(end+1) = find(min(cumulativeEnergyMap(maxCol,:)));
    end
end 
=======
     im = (uint8(double(imread('inputSeamCarvingPrague.jpg'))));
     energyImage = energy_img(im);
     cumulative_min_energy_map(energyImage, 'HORIZONTAL');
     
     [rows, columns] = size(energyImage);
     M = zeros(size(energyImage));
        
        M(1,:) = energyImage(1,:);
        R = M(:, 1);
        G = M(:, 2);
        B = M(:, 3);
        
        for j = 1:columns
            for i = 2:rows                
                if j == 1
                    M(i,j) = M(i-1, j); %if left corner then get top value
                
                else    %else top and top left
                    M(i,j) = min([M(i-1, j-1), M(i-1, j)]); 
                end
                M(i,j) = M(i,j) + energyImage(i, j);
                R = 255;
                G = 0;
                B = 0;
                M(:, 1) = R;
                M(:, 2) = G;
                M(:, 3) = B;
            end
        end
    imagesc(M);
    
    
end
>>>>>>> 5feea18bc5bbba744c5f528e19761f932ed92d8f
