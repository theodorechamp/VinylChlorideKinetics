function dTdV = energyBal(Htot,rates,Tlast,molFracs,Cp,dV)

term1 = 0;

for i = 1:length(rates)
    term1 = term1 + rates(i)*Htot(i); 
end

%Params
U = 300; %Given in problem statement.
D = .0245;
Tinf = 298; %Dummy Value, 25C

term2 = U * dV * 4 / D * (Tlast - Tinf);

term3 = 0;
for i = 1:length(molFracs)
    term3 = term3 + molFracs(i)*Cp(i);
end

dTdV = (term1 - term2) / term3;
end
