function rates = rateODE(pp) %pp is a vector of all partial pressures, k is a vector of all rate constants
%This function solves the rate equations for all reactions in the vinyl
%chloride process returning a 'rate' vector with an entry for each rate
%expression

%Calculate rate constant for each reaction 
a1 = 10^4.2; a2 = 10^13.23; a3 = 10^6.78;  % a's are the pre-exponential factors from the Lakshmanan paper.

% E's are acivation energies in units of kJ from the Lakshmanan paper.
E1 = -40.1; E2 = -128.08; E3 = -112; 

%Calculate rate equations.
k(1) = a1 * exp(E1/(R*T));
k(2) = a2 * exp(E2/(R*T));
k(3) = a3 * exp(E3/(R*T));
k(4) = (1000 * exp(17.13 - 13000/(1.987*T))) / exp(5.4+16000/(1.987*T));


rates(1) = k(1) * pp(1) * pp(6)^0.5;
rates(2) = k(2) * pp(7) * pp(6)^0.5;
rates(3) = k(3) * pp(1) * pp(3) * pp.(6)^0.5;
rates(4) = k(4) * pp(3) / pp(6); 

% 1 = c2h4
% 2 = hcl
% 3 = o2
% 4 = 1,1,2-trichloroethane
% 5 = co2
% 6 = cl2
% 7 = 1,2-dichloroethane
% 8 = h2o

end

