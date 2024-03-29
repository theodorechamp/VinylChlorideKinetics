function speciesBal = speciesBal(rates, phi)

dF1dVt = (-1*rates(1) - 1*rates(3)) * (1-phi);
dF2dVt = (-2*rates(1) - 1*rates(2) + 4*rates(4)) * (1-phi);
dF3dVt = (-0.5*rates(2) - 3*rates(3) + rates(4)) * (1-phi);
dF4dVt = rates(2) * (1-phi);
dF5dVt = (2*rates(3)) * (1-phi);
dF6dVt = (2*rates(4)) * (1-phi);
dF7dVt = (rates(1) - 1*rates(2)) * (1-phi);
dF8dVt = (rates(1) + rates(2) + 2*rates(3) + 2*rates(4)) * (1-phi);

speciesBal = [dF1dVt, dF2dVt, dF3dVt, dF4dVt, dF5dVt, dF6dVt, dF7dVt, dF8dVt];

% 1 = c2h4
% 2 = hcl
% 3 = o2
% 4 = 1,1,2-trichloroethane
% 5 = co2
% 6 = cl2
% 7 = 1,2-dichloroethane
% 8 = h2o

end
