function outvar = handler(v, y, rates, phi)

%unpacking y
nflow = y(1);
T = y(2);
P_t = y(3);
nflowTot = 0; %Check with Matt if mol flowrates or just mol comps should be used.

for i = 1:Length(y(1)) %calculate total mole flow
   nflowTot = nflowTot + y(i);
end

molFracs = [0,0,0,0,0,0,0,0];
for i = 1:Length(molFracs) %calculate mol fractions
    molFracs(i) = nflow(i)/nflowTot;
end

pp = [0,0,0,0,0,0,0,0];
for i = 1:Length(pp) %calculate mol fractions
    pp(i) = molFracs(i) * P_t;
end

outvar(1) = rateODE(%pp, k);

outvar(2) = energyBal(Htot, rates, T, molFracs, Cp, dV);

%calc pp, I

outvar(3) = speciesBal(rates, phi);

%Sum pp

outvar(4) = ergun(T,P_t);

end
