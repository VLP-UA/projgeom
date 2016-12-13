function M = RotY3(beta)
% function M = RotY3(alpha)
% 
% Rotation of an angle beta around Y axis.
%
% Rotation angle is defined in a counterclockwise direction when looking
% towards the origin (Weisstein, Eric W. "Rotation Matrix." From
% MathWorld--A Wolfram Web Resource.
% http://mathworld.wolfram.com/RotationMatrix.html), i.e., following the
% right hand screw rule-
%
M = [ cos(beta)      0         sin(beta)    0
         0           1             0        0
     -sin(beta)      0         cos(beta)    0
         0           0             0        1 ];
 return
 