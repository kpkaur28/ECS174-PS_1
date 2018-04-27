% Kiranpreet Kaur
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