function outvar = handler(v, y,  rates, n_tot_flow, phi)

%unpacking y
nflow = y(1);
T = y(2);
P = y(3);



outvar(1) = rateODE();

outvar(2) = energyBal(Htot, rates, T, n_tot_flow, Cp, dV);

%calc pp, I

outvar(3) = speciesBal(pp, rates, n_tot_flow, phi);

%Sum pp

outvar(4) = ergun(T,P_t);