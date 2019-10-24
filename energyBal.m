function dTdV = energyBal(Htot,rates,Tlast,n_tot_flow,Cp,dV)

term1 = 0;

for i = 1:Length(rates)
    term1 = term1 + rates(i)*Htot(i); 
end

%Params
U = 100; %Dummy Value
D = .0245;
Tinf = 298; %Dummy Value, 25C

term2 = U * dV * 4 / D * (Tlast - Tinf);

term3 = 0;
for i = 1:Length(comp)
    term3 = term3 + n_tot_flow(i)*Cp(i);
end

dTdV = (term1 - term2) / term3;
end
