%% Set #1

% M1: Cube centered in (0,0,0) and length 2
M1 = [  -1 -1  2  1
        -1  1  2  1
         1 -1  2  1
         1  1  2  1 ]';
         
M1 = [M1 M1];

M1(3,5:8) = [4 4 4 4]
        
%% Set #2

% M2: 16 points in the vertical plane

M2=zeros(4,16);

for i = 1:4
    for j = 1:4
        M2(:,i+(j-1)*4) = [ (i-1) 0 (j-1) 1]'
    end
end
