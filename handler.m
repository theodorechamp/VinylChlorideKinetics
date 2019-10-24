function outvar = handler(v, y, rates, phi)

%unpacking y
nflow = y(1);
T = y(2);
P = y(3);
TotFlow = 0;

for i = 1:y(1)
    
end

outvar(1) = rateODE(%pp, k);

outvar(2) = energyBal(Htot, rates, T, n_tot_flow, Cp, dV);

%calc pp, I

outvar(3) = speciesBal(rates, phi);

%Sum pp

outvar(4) = ergun(T,P_t);

end
