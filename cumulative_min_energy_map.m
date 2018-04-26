% Kiranpreet Kaur
% Zaryab Farooq
% 04/20/2018
% cumulativeEnergyMap

function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)
    im = (uint8(double(imread('inputSeamCarvingPrague.jpg'))));
    energyImage = energy_img(im);
    
    [rows, columns] = size(energyImage);
    M = zeros(size(energyImage));
    
   
    if seamDirection == 'VERTICAL' 
      % fprintf('Vertical');
        M(1,:) = energyImage(1,:);
        
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
            end
        end
        
    elseif seamDirection == 'HORIZONTAL'
        
      M(:,1) = energyImage(:,1);
      %  fprintf('Horizontal'); 
        for j = 1:columns
            for i = 2:rows                
                if j == 1
                    M(i,j) = M(i-1, j); %if left corner then get top value
                
                else    %else top and top left
                    M(i,j) = min([M(i-1, j-1), M(i-1, j)]); 
                end
                M(i,j) = M(i,j) + energyImage(i, j);
            end
        end
       
    else
        fprintf('Wrong input');
        return
    end
    imagesc(M);
    
    
end
