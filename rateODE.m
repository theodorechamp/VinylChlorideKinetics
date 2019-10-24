function rates = rateODE(pp, k) %pp is a vector of all partial pressures, k is a vector of all rate constants
%This function solves the rate equations for all reactions in the vinyl
%chloride process returning a 'rate' vector with an entry for each rate
%expression
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

