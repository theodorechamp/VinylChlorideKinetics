# VinylChlorideKinetics

This serves as a repository for Group #7 in CHEN 4530 (Design) at CU Boulder 

Group #7 consists of <br>
Annika Lai, Grand Supreme Leader <br>
Jason Desveaux, Junior to the Grand Supreme Leader<br>
Theodore Champ<br>
Matt Bedeaux <br>
Lena Chavez<br>

## Documentation

The vector *pp* is vector of partial pressures of species at this moment.
The entries of pp are below: <br>
pp(1) = c2h4<br>
pp(2) = hcl<br>
pp(3) = o2
pp(4) = 1,1,2-trichloroethane
pp(5) = co2
pp(6) = cl2
pp(7) = 1,2-dichloroethane
pp(8) = h2o

The vector *k* is a vector of kinetic constants for rate expressions.
Index values align with drawn flowchart on google docs

The vector *rates* has the rate of each reaction at that step, given in 
mols per unit time. The indexes agree with the flowchart. 
Ex. r(1) is the rate of equation 1 (C2H4+HCl)


TODO

[] Write main.m
[] Species balance
[] IGL (Its own function or just write it each time?)
[] Energy Balance
