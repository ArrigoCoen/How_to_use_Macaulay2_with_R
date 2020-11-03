--------------------------------------------------------
-- Parameters identifiability for the general network --
--------------------------------------------------------
-- K = 3
-- How many equations: _all
-- Date of creation: Fri May 01 16:10:40 2020

R = QQ[x,y,z]
I = ideal(x-2*y+3z-7,2*x+y+z-4,-3*x+2*y-2*z+10)
primaryDecomposition I
