function [ Mn ] = pgNormalize( M )
%function [ Mn ] = pgNormalize( M )
%   Normalize a vector or an array in homegeneous coordinates. 

nlines = size(M,1);

Mnl = repmat(M(nlines,:),nlines,1);
Mn = M ./ Mnl;

end

