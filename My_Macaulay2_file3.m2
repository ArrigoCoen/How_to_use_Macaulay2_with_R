-- Solving linear equations

R = QQ[x,y,z]
I = ideal(x-2*y+3*z-7,2*x+y+z-4,-3*x+2*y-2*z+10)
primaryDecomposition I
