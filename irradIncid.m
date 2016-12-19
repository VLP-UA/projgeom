function [ irrad_angle, incid_angle ] = irradIncid( H_E, H_R )
% Computes the irradiation and incidence angles for a light source and a
% receiver, where H_E and H_R are the Homogeneous Transformation Matrices
% describing, respectively, the emitter and receiver position and
% orientation. 
%   Detailed explanation goes here

% 1st: determine the vector from Emitter to Receiver

l = H_R(1:3,4) - H_E(1:3,4);

% Extract the coordinates of the z axis versor in both HTM:
k_E = H_E(1:3,3);
k_R = H_R(1:3,3);

% Compute the irradiance angle
irrad_angle = acos(dot(k_E,l)/(norm(k_E)*norm(l)));

% and the incidence angle. In this case, the vector direction is reversed. 
incid_angle = acos(dot(k_R,-l)/(norm(k_R)*norm(l)));

end

