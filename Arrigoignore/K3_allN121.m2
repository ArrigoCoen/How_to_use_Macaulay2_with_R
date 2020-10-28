--------------------------------------------------------
-- Parameters identifiability for the general network --
--------------------------------------------------------
-- file name = K3_allN121.m2
-- K = 3
-- How many equations: _all
-- Date of creation: Sat Sep 19 09:36:22 2020
-- To run in console: cat K3_allN121.m2 | M2 &> K3_allN121_out.txt
-- For K = 3 are 18 equations but we only consider here 3
-- a's = a7,a8,a9
-- z's = z0,z11


R = QQ[gam,a7,a8,a9,z0,z11]
                    
I = ideal(
(1-gam)*(1-(2/3)*z11)+gam*(1-(2/3)*z11*z0)-a7,
(1-gam)*(1/3)*z11+gam*(1/3)*z11*z0-a8,
(1-gam)*(1/3)*z11+gam*(1/3)*z11*z0-a9
);

G = eliminate(I,{gam,z0,z11})
dim G 
