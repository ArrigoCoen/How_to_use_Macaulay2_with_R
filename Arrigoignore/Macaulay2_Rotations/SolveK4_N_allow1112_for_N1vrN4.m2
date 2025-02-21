------------------------------------------------------------------
--   Comparing equations of two rotations for 4-cycle networks  --
------------------------------------------------------------------
-- file name = Macaulay2_Rotations/SolveK4_N_allow1112_for_N1vrN4.m2
-- N_allowed = 1112 (taxa allow in each of the four sub-trees)
-- First  rotation Ni = N1
-- Second rotation Nj = N4
-- How many equations: 12
-- Date of creation: Thu Nov 05 13:21:28 2020
-- Equation numbers = 7,8,9,22,23,24,28,29,30,31,32,33
-- Generated by the function 'Gen_one_M2_rotation_file' of the file 'Fn phylo R.R'
-- Obs: the 'n=' are with respect to the N1 (non rotated) network

 R = QQ[ gam,z0,z1,z11,gamRRR,zRRR0,zRRR1,zRRR12 ]

 I = ideal(1-(2/3)*z11  -(  (1-gamRRR)*(1-(2/3)*zRRR12)+gamRRR*(1-(2/3)*zRRR1*zRRR12) ) ,
	(1/3)*z11  -(  (1-gamRRR)*(1/3)*zRRR12+gamRRR*(1/3)*zRRR1*zRRR12 ) ,
	(1/3)*z11  -(  (1-gamRRR)*(1/3)*zRRR12+gamRRR*(1/3)*zRRR1*zRRR12 ) ,
	(1-gam)*(1-(2/3)*z11)+gam*(1-(2/3)*z0*z11)  -(  1-(2/3)*zRRR1*zRRR12 ) ,
	(1-gam)*(1/3)*z11+gam*(1/3)*z0*z11  -(  (1/3)*zRRR1*zRRR12 ) ,
	(1-gam)*(1/3)*z11+gam*(1/3)*z0*z11  -(  (1/3)*zRRR1*zRRR12 ) ,
	(1-gam)*(1-(2/3)*z1)+gam*(1/3)*z0  -(  (1-gamRRR)*(1-(2/3)*zRRR1)+gamRRR*(1/3)*zRRR0 ) ,
	(1-gam)*(1/3)*z1+gam*(1-(2/3)*z0)  -(  (1-gamRRR)*(1/3)*zRRR1+gamRRR*(1-(2/3)*zRRR0) ) ,
	(1-gam)*(1/3)*z1+gam*(1/3)*z0  -(  (1-gamRRR)*(1/3)*zRRR1+gamRRR*(1/3)*zRRR0 ) ,
	(1-gam)*(1-(2/3)*z1*z11)+gam*(1-(2/3)*z11)  -(  (1-gamRRR)*(1-(2/3)*zRRR12)+gamRRR*(1-(2/3)*zRRR0*zRRR1*zRRR12) ) ,
	(1-gam)*(1/3)*z1*z11+gam*(1/3)*z11  -(  (1-gamRRR)*(1/3)*zRRR12+gamRRR*(1/3)*zRRR0*zRRR1*zRRR12 ) ,
	(1-gam)*(1/3)*z1*z11+gam*(1/3)*z11  -(  (1-gamRRR)*(1/3)*zRRR12+gamRRR*(1/3)*zRRR0*zRRR1*zRRR12 ) )

 primaryDecomposition I