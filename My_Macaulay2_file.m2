R = QQ[z0,z1,z11,zR0,zR1,zR10,gam,gamR]
I = ideal(1-(2/3)*z11-(1-gamR)*(1-(2/3)*zR0*zR10)+gamR*(1-(2/3)*zR10),(1/3)*z11-(1-gamR)*(1/3)*zR0*zR10+gamR*(1/3)*zR10,(1/3)*z11-(1-gamR)*(1/3)*zR0*zR10+gamR*(1/3)*zR10,(1-gam)*(1-(2/3)*z11)+gam*(1-(2/3)*z0*z11)-(1-gamR)*(1-(2/3)*zR1*zR0*zR10)+gamR*(1-(2/3)*zR10),(1-gam)*(1/3)*z11+gam*(1/3)*z0*z11-(1-gamR)*(1/3)*zR1*zR0*zR10+gamR*(1/3)*zR10,(1-gam)*(1/3)*z11+gam*(1/3)*z0*z11-(1-gamR)*(1/3)*zR1*zR0*zR10+gamR*(1/3)*zR10,(1-gam)*(1-(2/3)*z1)+gam*(1/3)*z0-(1-gamR)*(1-(2/3)*zR1)+gamR*(1/3)*zR0,(1-gam)*(1/3)*z1+gam*(1-(2/3)*z0)-(1-gamR)*(1/3)*zR1+gamR*(1-(2/3)*zR0),(1-gam)*(1/3)*z1+gam*(1/3)*z0-(1-gamR)*(1/3)*zR1+gamR*(1/3)*zR0,(1-gam)*(1-(2/3)*z1*z11)+gam*(1-(2/3)*z11)-1-(2/3)*zR0*zR10,(1-gam)*(1/3)*z1*z11+gam*(1/3)*z11-(1/3)*zR0*zR10,(1-gam)*(1/3)*z1*z11+gam*(1/3)*z11-(1/3)*zR0*zR10)
primaryDecomposition I
