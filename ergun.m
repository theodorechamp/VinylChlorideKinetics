function dPdV = ergun(T,P_t)
mflow = 75000 % kmol/hr using a guess based on the Aspen simulation! 
% Check against the new version
D = 0.254 %ujust an initial guess!!!) units of meters, AKA 1" 
Go = mflow/(pi*D^2/4);
Ac = D * pi;
dPdV = - 1/Ac(150*(1-eps)/Dp/G0*mu+7/4)*(1-eps)/eps^3/Dp/RhoGas*G0^2/Ar/101325;