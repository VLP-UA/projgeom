function h = plot3Drefaxis(K)
% function h = plot3Drefaxis(K)
%
% Plots the referential basis defined by transformation matrix K.

s='b';

% Stores the current hold state
holdstate=ishold;

% Draw the 3 vectors
for i=1:3
  if i==3
    s='r';
  end
  quiver3(K(1,4),K(2,4),K(3,4),K(1,i),K(2,i),K(3,i),s);
  % Force hold for j and k vectors
  hold on
end

% restore hold state
if holdstate==1
  hold on
else
  hold off
end
 
 return