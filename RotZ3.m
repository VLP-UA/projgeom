function M = RotZ3(gamma)
% function M = RotZ3(gamma)
% 
% Rotation of an angle gamma around Z axis.
%
% Rotation angle is defined in a counterclockwise direction when looking
% towards the origin (Weisstein, Eric W. "Rotation Matrix." From
% MathWorld--A Wolfram Web Resource.
% http://mathworld.wolfram.com/RotationMatrix.html), i.e., following the
% right hand screw rule-
%
M = [ cos(gamma)    -sin(gamma)     0       0
      sin(gamma)     cos(gamma)     0       0
           0             0          1       0
           0             0          0       1 ];
 return
 