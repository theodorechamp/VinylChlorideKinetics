function dPdV = ergun(T,P_t,D,Lr)

mflow = 75000; % kmol/hr using a guess based on the Aspen simulation! 
D = 0.0254; %just an initial guess!!!) units of meters, AKA 1" 
Dp = D/8; %Using heuristic Weimer gave in class on 10/10/19 that particle diameter should be 1/8 of tube diameter
G0 = mflow/(pi*D^2/4);
Ac = D * pi;
rho = ; %Density will be f(p,T) etc. Need to account for that here.
dPdV = - 150/Ac*((1-phi)/(Dp*G0/(nu*rho))+(7/4))*((1-phi)/phi^3)*(G0^2/(rho*Dp));