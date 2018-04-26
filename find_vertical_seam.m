% Kiranpreet Kaur
% Zaryab Farooq
% 04/20/2018
% verticalSeam

function verticalSeam = find_vertical_seam(cumulativeEnergyMap)
     im = (uint8(double(imread('inputSeamCarvingPrague.jpg'))));
     energyImage = energy_img(im);
     cumulative_min_energy_map(energyImage, 'VERTICAL');
     
     [rows, columns] = size(energyImage);
     M = zeros(size(energyImage));
        
        M(1,:) = energyImage(1,:);
        R = M(:, 1);
        G = M(:, 2);
        B = M(:, 3);

        for i = 2:rows
            for j = 1:columns
                if j == 1
                    M(i,j) = min([M(i-1, j), M(i-1, j+1)]);
                   
                elseif j == columns
                    M(i,j) = min([M(i-1, j-1), M(i-1, j)]);
                   
                else
                    M(i,j) = min([M(i-1,j-1), M(i-1, j), M(i-1, j+1)]);
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
    
