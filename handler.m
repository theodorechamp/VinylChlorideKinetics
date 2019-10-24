function outvar = handler(v, y, rates, phi)

%unpacking y
nflow = y(1);
T = y(2);
P_t = y(3);

%Check with Matt if mol flowrates or just mol comps should be used.
%calculate total mole flow
nflowTot = 0; 
for i = 1:Length(y(1)) 
   nflowTot = nflowTot + y(i);
end

%calculate mol fractions
molFracs = [0,0,0,0,0,0,0,0];
for i = 1:Length(molFracs) 
    molFracs(i) = nflow(i)/nflowTot;
end

%calculate partial pressures
pp = [0,0,0,0,0,0,0,0]; 
for i = 1:Length(pp) 
    pp(i) = molFracs(i) * P_t;
end


outvar(1) = rateODE(pp);

outvar(2) = energyBal(Htot, rates, T, molFracs, Cp, dV);

outvar(3) = speciesBal(rates, phi);

outvar(4) = ergun(T,P_t);

end
