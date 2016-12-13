function M = RotX3(alpha)
% function M = RotX3(alpha)
% 
% Rotation of an angle alpha around X axis.
%
% Rotation angle is defined in a counterclockwise direction when looking
% towards the origin (Weisstein, Eric W. "Rotation Matrix." From
% MathWorld--A Wolfram Web Resource.
% http://mathworld.wolfram.com/RotationMatrix.html), i.e., following the
% right hand screw rule-
%
M = [1        0          0        0
     0    cos(alpha) -sin(alpha)  0
     0    sin(alpha)  cos(alpha)  0
     0        0           0       1];
 return
 