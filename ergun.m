function dPdV = ergun(T,P_t, MW, nflow)

mflowTot = 0; % mol/hr 
for i = 1:Length(MW)
    mflowTot = nflow(i)*MW(i);
end

Lr = 1; %Look into reactor length
D = 0.0254; 
Dp = D/8; %Using heuristic Weimer gave in class on 10/10/19 that particle diameter should be 1/8 of tube diameter
G0 = mflowTot/(pi*D^2/4);
Ac = D * pi;
rho = 1; %Density will be f(p,T) etc. Need to account for that here.
dPdV = - 150/Ac*((1-phi)/(Dp*G0/(nu*rho))+(7/4))*((1-phi)/phi^3)*(G0^2/(rho*Dp));
end