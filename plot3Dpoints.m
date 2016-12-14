function plot3Dpoints(M,s,links)
% function plot3Dpoints(M,s)
% 
% Plots the 3D poinsts defined by array M. Each column of M defines a point 
% in a 3-D space, up to a constant, such that:
% Given a column C=[U V W S]' of M, the point represented by C is 
% (x,y,z) = (U/S, V/S, W/S)
% 
% 's' is a string defining the plot style (defaults to '*r' if ommited).
%
% pf@ua.pt, 12 Dec 2016

if nargin < 2
  s = '*r';
end
 
plot3(M(1,:)./M(4,:),M(2,:)./M(4,:),M(3,:)./M(4,:),s)

if nargin >= 3
    % Store current hold state
    holdstate = ishold;

    % Force hold on to plot the links
    hold on
    
    for n = 1:size(links,2)
        i = links(1,n);
        j = links(2,n);
        
        X = M(1,[i j])./M(4,[i j]);
        Y = M(2,[i j])./M(4,[i j]);
        Z = M(3,[i j])./M(4,[i j]);
        
        plot3(X,Y,Z,'b');
    end
    
    % Restore hold state
    if holdstate == 0
        hold off
    end
    
end

