% This file runs the script, ensuring the correct sequence of calling
% functions

%%%%%%%%%%%%%%
% Parameters %
%%%%%%%%%%%%%%
Tin = 298; % not the official value, will be adjusted to achieve outlet of 533 
Htot = [-92.29, -44.70, -981.6, -354.77, 354.77];
n_tot_flow = {};
Cp = [3.41e4, 1.67e4, 5.71e4, 6.34e4, 1.89e4, 1.57e4, 1.92e4, 2.39e4]; % averaged over temp range
Vr = 1.414*10^-3*1000;%L
Lr = 3; % m
nflowinit = [100,100,100,0,0,0,0,0]; %Same indices as pp
phi = .4;
MW = [28.05, 36.46, 16.00, 133.4, 44.01, 70.9, 98.96, 18.02 ];

%%%%%%%%%
% Logic %
%%%%%%%%%
vspan = linspace(0, Vr, 200);
%Loading Dependent variables
y0 = [nflowinit(1) nflowinit(2) nflowinit(3) nflowinit(4) nflowinit(5) nflowinit(6) nflowinit(7) nflowinit(8) Tin Pin];

handleranon = @(v,y) handler(v,y,rates,phi, MW);

%Mass Matrix (I have no idea if this is right, just assuming all diff eqs
%for now.)

M = [ 1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0;
      0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0;
      0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0;
      0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0;
      0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0;
      0     0     0     0     0     1     0     0     0     0     0     0     0     0     0     0;
      0     0     0     0     0     0     1     0     0     0     0     0     0     0     0     0;
      0     0     0     0     0     0     0     1     0     0     0     0     0     0     0     0;
      0     0     0     0     0     0     0     0     1     0     0     0     0     0     0     0;
      0     0     0     0     0     0     0     0     0     1     0     0     0     0     0     0;
      0     0     0     0     0     0     0     0     0     0     1     0     0     0     0     0;
      0     0     0     0     0     0     0     0     0     0     0     1     0     0     0     0;
      0     0     0     0     0     0     0     0     0     0     0     0     1     0     0     0;
      0     0     0     0     0     0     0     0     0     0     0     0     0     1     0     0;
      0     0     0     0     0     0     0     0     0     0     0     0     0     0     1     0;
      0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     1;];
 
options = odeset('Mass',M);
[ v, ysoln ] = ode45(handleranon,vspan,y0,options);

plotdata();


