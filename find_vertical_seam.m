% Kiranpreet Kaur
<<<<<<< HEAD
% 04/20/2018
% verticalSeam

function verticalSeam = find_vertical_seam(cumulativeEnergyMap)    
    verticalSeam = [];
    [maxRow, maxCol] = size(cumulativeEnergyMap);
    
    % to get the column of the min number
    c = min(cumulativeEnergyMap(maxRow,:));
    
    verticalSeam(maxRow) = c;   % add the last col index
    
    % taking min element, starting from 2nd-last row going up
    for i=maxRow-1:-1:2
        if c==1 % if the first column, then check top and top right
            [value, pos] = min([cumulativeEnergyMap(i-1,c), cumulativeEnergyMap(i-1,c+1)]);
            if pos == 1
                verticalSeam(i) = c;
            else
                verticalSeam(i) = c+1;
                c = c+1;
            end
            fprintf("%d ", c)
            
        elseif c==maxCol %check top and top left
            [value, pos] = min([cumulativeEnergyMap(i-1,c-1), cumulativeEnergyMap(i-1,c)]);
            if pos == 1
                verticalSeam(i) = c-1;
                c = c - 1;
            else
                verticalSeam(i) = c;
            end
            fprintf("%d ", c)
        else if c>1 && c<maxCol   % check all top thre
            [value, pos] = min([cumulativeEnergyMap(i-1,c-1), cumulativeEnergyMap(i-1,c), cumulativeEnergyMap(i-1,c+1)]);
             if pos == 1
                verticalSeam(i) = c-1;
                c = c - 1;
            elseif pos == 2
                verticalSeam(i) = c;
            else
               verticalSeam(i) = c+1;
               c = c+1;
             end
             fprintf("%d ", c)
        end
        
    end

    
end 
=======
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
    
>>>>>>> 5feea18bc5bbba744c5f528e19761f932ed92d8f
