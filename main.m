% This file runs the script, ensuring the correct sequence of calling
% functions



%%%%%%%%%%%%%%
% Parameters %
%%%%%%%%%%%%%%
Tin = 298; % not the official value, will be adjusted to achieve outlet of 533 
Htot = {-92.29, -44.70, -981.6, -354.77, 354.77};
n_tot_flow = {};
Cp = {3.41e4, 1.67e4, 5.71e4, 6.34e4, 1.89e4, 1.57e4, 1.92e4, 2.39e4}; % averaged over temp range
Vr = 1.414*10^-3;%m3
Lr = 3; % m
nflowinit = {100,100,100,0,0,0,0,0}; %Same indices as pp


%%%%%%%%%
% Logic %
%%%%%%%%%

vspan = linspace(0, Vr, 200);
%Loading Dependent variables
y = {nflowinit,Tin,Pin};

handleranon = @(v,y) handler(v,y,
    


