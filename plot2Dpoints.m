function plot2Dpoints(m,s)
% function plot2Dpoints(m,s)
% 
% Plots the 2D poinsts defined by array m. Each column of m defines a point 
% in 2-D space, up to a constant, such that:
% Given a column C=[U V S]' of m, the point represented by C is 
% (x,y) = (U/S, V/S)
% 
% 's' is a string defining the plot style (defaults to '*r' if ommited).
%
% pf@ua.pt, 12 Dec 2016

if nargin < 2
  s = '*r';
 end

plot(m(1,:)./m(3,:),m(2,:)./m(3,:),s)