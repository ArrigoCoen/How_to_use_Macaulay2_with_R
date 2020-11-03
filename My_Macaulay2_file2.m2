-- Intro

K = frac(QQ[a,b,c,d])
R = K[x,y,z]
m = matrix{{a*x + b*y + c*z, 3*x + 4*y + 5*z, 7*x + 7*y + 8*z}}
B = matrix{{d}, {6}, {9}}
A = transpose(m // vars R)
(inverse A)*B
