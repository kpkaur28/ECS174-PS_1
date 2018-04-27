% Kiranpreet Kaur
% 04/20/2018
% cumulativeEnergyMap


function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)
    
    [rows, columns] = size(energyImg);
    M = zeros(size(energyImg));
    
    
    if strcmp(seamDirection, 'VERTICAL')
        fprintf('Vertical');
        
        M(1,:) = energyImg(1,:);
        
        for i = 2:rows
            for j = 1:columns
                if j == 1
                    M(i,j) = min([M(i-1, j), M(i-1, j+1)]);
                
                elseif j == columns
                    M(i,j) = min([M(i-1, j-1), M(i-1, j)]);
                
                else
                    M(i,j) = min([M(i-1,j-1), M(i-1, j), M(i-1, j+1)]);
                end
                M(i,j) = M(i,j) + energyImg(i, j);
            end
        end
        
    elseif strcmp(seamDirection,'HORIZONTAL')
      M(:,1) = energyImg(:,1);
      transM = transpose(M); % getting transpose of image inorder to use same vertical formulae
      transEnergy = transpose(energyImg);
      
      [rows, columns] = size(transM); %new row and cols of transpose image
      
      for i = 2:rows
            for j = 1:columns
                if j == 1
                    transM(i,j) = min([transM(i-1, j), transM(i-1, j+1)]);
                
                elseif j == columns
                    transM(i,j) = min([transM(i-1, j-1), transM(i-1, j)]);
                
                else
                    transM(i,j) = min([transM(i-1,j-1), transM(i-1, j), transM(i-1, j+1)]);
                end
                transM(i,j) = transM(i,j) + transEnergy(i, j);
            end
      end
      M = transpose(transM);
    end
      %{
      fprintf('Horizontal'); 
        for j = 1:columns
            for i = 2:rows                
                if j == 1
                    M(i,j) = M(i-1, j); %if left corner then get top value
                
                else    %else top and top left
                    M(i,j) = min([M(i-1, j-1), M(i-1, j)]); 
                end
                M(i,j) = M(i,j) + energyImg(i, j);
            end
        end
       
    else
        fprintf('Wrong input');
        return
    end
    %}
    
    imagesc(M);
    cumulativeEnergyMap = M;
    
    
end