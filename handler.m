function outvar = handler(v, y, rates, phi, MW)

%unpacking y
nflowc2h4 = y(1);
nflowhcl = y(2);
nflowo2 = y(3);
nflowc2h3cl3 = y(4);
nflowco2 = y(5);
nflowcl2 = y(6);
nflowc2h4cl2 = y(7);
nflowh2o = y(8);

T = y(9);
P_t = y(10);


%Check with Matt if mol flowrates or just mol comps should be used.
%calculate total mole flow
nflowTot = 0; 
for i = 1:(Length(y)-2) 
   nflowTot = nflowTot + y(i);
end
disp(int2str(nflowTot) + "  = 300"); 

%calculate mol fractions
molFracs = [0,0,0,0,0,0,0,0];
for i = 1:Length(molFracs) 
    molFracs(i) = y(i)/nflowTot;
end

%calculate partial pressures with Daltons law
pp = [0,0,0,0,0,0,0,0]; 
for i = 1:Length(pp) 
    pp(i) = molFracs(i) * P_t;
end


outvar(1) = rateODE(pp);

outvar(2) = energyBal(Htot, rates, T, molFracs, Cp, dV);

outvar(3) = speciesBal(rates, phi);

nflow = [nflowc2h4, nflowhcl,nflowo2,nflowc2h3cl3,nflowco2,nflowcl2,nflowc2h4cl2,nflowh2o];
outvar(4) = ergun(T,pp, MW, nflow); %nflow needs to be changed 

end
