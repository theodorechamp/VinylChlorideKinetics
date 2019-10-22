function speciesBal = speciesBal(pp, rates, n_tot_flow, phi)
R = 
dpp1dt = (-1*rates(1) - 1*rates(3)) * phi/n_tot_flow;
dpp2dt = (-2*rates(1) - 1*rates(2) - 4*rates(4) + 4*rates(5)) * phi/n_tot_flow;
dpp3dt = (-0.5*rates(2) - 3*rates(3) - rates(4) + rates(5)) * phi / n_tot_flow;
dpp4dt = rates(2) * phi / n_tot_flow;
dpp5dt = (2*rates(3)) * phi / n_tot_flow;
dpp6dt = (2*rates(4) - 2*rates(5)) * phi / n_tot_flow;
dpp7dt = (rates(1) - rates(2))(2*rates(3)) * phi / n_tot_flow;
dpp8dt = (rates(1) + rates(2) + 2*rates(3) + 2*rates(4) - 2*rates(5)) * phi / n_tot_flow;


% 1 = c2h4
% 2 = hcl
% 3 = o2
% 4 = 1,1,2-trichloroethane
% 5 = co2
% 6 = cl2
% 7 = 1,2-dichloroethane
% 8 = h2o

end
