% Experiment 1

%% Preparation

%Load (create) the objects
objects

% Define the camera matrix
%
% f = 0.1, no offset in retinal plane coordinates
P = PersProjMatrix1(0.1,0,0)

% Plot M2a object
figure(1)
plot3Dpoints(M2a,'*r',links2a)

%% Camera position 1

% Define the camera position: 
% The camera stands at (0,-10,0), looking toward +y (camera z axis is
% aligned with real word y)
K = RotX3(-pi/2)*Trans3(0,0,-10)

% Plot the camera axis
hold on
plot3Drefaxis(K);

% This is merely cosmetical... 
axis('equal')

% Compute the camera image
m = P*K^(-1)*M2a;

% Plot the camera image
figure(2);
plot2Dpoints(m,'*r',links2a);

%% Camera position 2

% Rotate the camera by pi/3 around Z (real word coordinates)
K2 = RotZ3(pi/3)*K;

figure(1)
plot3Drefaxis(K2);

% Compute the camera image in the new position
m2 = P*K2^(-1)*M2a;

figure(3);
plot2Dpoints(m2,'*r',links2a);
axis('equal');

%% Camera position 3

% Move the camera up by 10 and tilt it down by pi/4
K3 = K2*Trans3(0,-10,0)*RotX3(-pi/4);

figure(1)
plot3Drefaxis(K3);

% Compute the camera image in the new position
m3 = P*K3^(-1)*M2a;

figure(4);
plot2Dpoints(m3,'*r',links2a);
axis('equal')

%% Object M2b

figure(5)
plot3Dpoints(M2b,'*r',links2b);
axis('equal')
hold on
plot3Drefaxis(K3);

m2b = P*K3^(-1)*M2b;

figure(6);
plot2Dpoints(m2b,'*r',links2b);
axis('equal')
