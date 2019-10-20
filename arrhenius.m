function k = arrhenius(T)
%Calculates rate constant for each reaction (outputs a vector of k
%values) for a given temperature
%note: k4 is k4 forward divided by k4 reverse

% a's are the pre-exponential factors from the Lakshmanan paper.
a1 = 10^4.2; a2 = 10^13.23; a3 = 10^6.78; 

% E's are acivation energies in units of kJ from the Lakshmanan paper.
E1 = -40.1; E2 = -128.08; E3 = -112; 

k(1) = a1 * exp(E1/(R*T));
k(2) = a2 * exp(E2/(R*T));
k(3) = a3 * exp(E3/(R*T));
k(4) = (1000 * exp(17.13 - 13000/(1.987*T))) / exp(5.4+16000/(1.987*T));
end

