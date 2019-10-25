function outvar = handler(v, y, phi, MW, Htot, Cp, dV)

%unpacking y
%disp(y(1))
nflowc2h4 = y(5);
nflowhcl = y(6);
nflowo2 = y(7);
nflowc2h3cl3 = y(8);
nflowco2 = y(9);
nflowcl2 = y(10);
nflowc2h4cl2 = y(11);
nflowh2o = y(12);

T = y(9);
P_t = y(10);


%Check with Matt if mol flowrates or just mol comps should be used.
%calculate total mole flow
nflowTot = 0; 
for i = 1:(length(y)-2) 
   nflowTot = nflowTot + y(i);
end
%disp(int2str(nflowTot) + "  = 300"); 

%calculate mol fractions
molFracs = [0,0,0,0,0,0,0,0];
for i = 1:length(molFracs) 
    molFracs(i) = y(i+4)/nflowTot;
end

%calculate partial pressures with Daltons law
pp = [0,0,0,0,0,0,0,0]; 
for i = 1:length(pp) 
    pp(i) = molFracs(i) * P_t;
end

test = rateODE(pp, T);
%disp(test)
outvar(1) = test(1);
outvar(2) = test(2);
outvar(3) = test(3);
outvar(4) = test(4);

outvar(5) = energyBal(Htot, test, T, molFracs, Cp, dV);

test2 = speciesBal(test, phi);

outvar(6) = test2(1);
outvar(7) = test2(2);
outvar(8) = test2(3);
outvar(9) = test2(4);
outvar(10) = test2(5);
outvar(11) = test2(6);
outvar(12) = test2(7);
outvar(13) = test2(8);



nflow = [nflowc2h4, nflowhcl,nflowo2,nflowc2h3cl3,nflowco2,nflowcl2,nflowc2h4cl2,nflowh2o];
outvar(14) = ergun(T,pp, MW, nflow, phi);  

outvar = outvar';

end
