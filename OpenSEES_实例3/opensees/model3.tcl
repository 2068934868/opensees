wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
node 1 0.000E+000 0.000E+000 0.000E+000
node 2 0.000E+000 0.000E+000 3.000E+003
puts "rigidDiaphragm"
puts "mass"
puts "node"
fix 1 1 1 1 1 1 1;
puts "Equal DOF"
puts "material"
##uniaxialMaterial Elastic 1 3.000E+004
##uniaxialMaterial Elastic 2 2.100E+005
##uniaxialMaterial Elastic 3 1.950E+005
##uniaxialMaterial Elastic 4 2.060E+005
##上述都是线性材料，算出来的pushover曲线是一条直线

uniaxialMaterial Steel01 2 335 200000 0.00001
uniaxialMaterial Concrete01 1 -26.8 -0.002 -15 -0.006

##NC500*500 
section Fiber 2 -GJ 1.100E+014 {
fiber -2.188E+002 -2.188E+002 3.906E+003 1
fiber -1.563E+002 -2.188E+002 3.906E+003 1
fiber -9.375E+001 -2.188E+002 3.906E+003 1
fiber -3.125E+001 -2.188E+002 3.906E+003 1
fiber 3.125E+001 -2.188E+002 3.906E+003 1
fiber 9.375E+001 -2.188E+002 3.906E+003 1
fiber 1.563E+002 -2.188E+002 3.906E+003 1
fiber 2.188E+002 -2.188E+002 3.906E+003 1
fiber -2.188E+002 -1.563E+002 3.906E+003 1
fiber -1.563E+002 -1.563E+002 3.906E+003 1
fiber -9.375E+001 -1.563E+002 3.906E+003 1
fiber -3.125E+001 -1.563E+002 3.906E+003 1
fiber 3.125E+001 -1.563E+002 3.906E+003 1
fiber 9.375E+001 -1.563E+002 3.906E+003 1
fiber 1.563E+002 -1.563E+002 3.906E+003 1
fiber 2.188E+002 -1.563E+002 3.906E+003 1
fiber -2.188E+002 -9.375E+001 3.906E+003 1
fiber -1.563E+002 -9.375E+001 3.906E+003 1
fiber -9.375E+001 -9.375E+001 3.906E+003 1
fiber -3.125E+001 -9.375E+001 3.906E+003 1
fiber 3.125E+001 -9.375E+001 3.906E+003 1
fiber 9.375E+001 -9.375E+001 3.906E+003 1
fiber 1.563E+002 -9.375E+001 3.906E+003 1
fiber 2.188E+002 -9.375E+001 3.906E+003 1
fiber -2.188E+002 -3.125E+001 3.906E+003 1
fiber -1.563E+002 -3.125E+001 3.906E+003 1
fiber -9.375E+001 -3.125E+001 3.906E+003 1
fiber -3.125E+001 -3.125E+001 3.906E+003 1
fiber 3.125E+001 -3.125E+001 3.906E+003 1
fiber 9.375E+001 -3.125E+001 3.906E+003 1
fiber 1.563E+002 -3.125E+001 3.906E+003 1
fiber 2.188E+002 -3.125E+001 3.906E+003 1
fiber -2.188E+002 3.125E+001 3.906E+003 1
fiber -1.563E+002 3.125E+001 3.906E+003 1
fiber -9.375E+001 3.125E+001 3.906E+003 1
fiber -3.125E+001 3.125E+001 3.906E+003 1
fiber 3.125E+001 3.125E+001 3.906E+003 1
fiber 9.375E+001 3.125E+001 3.906E+003 1
fiber 1.563E+002 3.125E+001 3.906E+003 1
fiber 2.188E+002 3.125E+001 3.906E+003 1
fiber -2.188E+002 9.375E+001 3.906E+003 1
fiber -1.563E+002 9.375E+001 3.906E+003 1
fiber -9.375E+001 9.375E+001 3.906E+003 1
fiber -3.125E+001 9.375E+001 3.906E+003 1
fiber 3.125E+001 9.375E+001 3.906E+003 1
fiber 9.375E+001 9.375E+001 3.906E+003 1
fiber 1.563E+002 9.375E+001 3.906E+003 1
fiber 2.188E+002 9.375E+001 3.906E+003 1
fiber -2.188E+002 1.563E+002 3.906E+003 1
fiber -1.563E+002 1.563E+002 3.906E+003 1
fiber -9.375E+001 1.563E+002 3.906E+003 1
fiber -3.125E+001 1.563E+002 3.906E+003 1
fiber 3.125E+001 1.563E+002 3.906E+003 1
fiber 9.375E+001 1.563E+002 3.906E+003 1
fiber 1.563E+002 1.563E+002 3.906E+003 1
fiber 2.188E+002 1.563E+002 3.906E+003 1
fiber -2.188E+002 2.188E+002 3.906E+003 1
fiber -1.563E+002 2.188E+002 3.906E+003 1
fiber -9.375E+001 2.188E+002 3.906E+003 1
fiber -3.125E+001 2.188E+002 3.906E+003 1
fiber 3.125E+001 2.188E+002 3.906E+003 1
fiber 9.375E+001 2.188E+002 3.906E+003 1
fiber 1.563E+002 2.188E+002 3.906E+003 1
fiber 2.188E+002 2.188E+002 3.906E+003 1
fiber -2.150E+002 -2.150E+002 4.906E+002 2
fiber -1.075E+002 -2.150E+002 4.906E+002 2
fiber 0.000E+000 -2.150E+002 4.906E+002 2
fiber 1.075E+002 -2.150E+002 4.906E+002 2
fiber 2.150E+002 -2.150E+002 4.906E+002 2
fiber -2.150E+002 2.150E+002 4.906E+002 2
fiber -1.075E+002 2.150E+002 4.906E+002 2
fiber 0.000E+000 2.150E+002 4.906E+002 2
fiber 1.075E+002 2.150E+002 4.906E+002 2
fiber 2.150E+002 2.150E+002 4.906E+002 2
fiber -2.150E+002 -1.075E+002 4.906E+002 2
fiber -2.150E+002 0.000E+000 4.906E+002 2
fiber -2.150E+002 1.075E+002 4.906E+002 2
fiber 2.150E+002 -1.075E+002 4.906E+002 2
fiber 2.150E+002 0.000E+000 4.906E+002 2
fiber 2.150E+002 1.075E+002 4.906E+002 2
}

puts "transformation"
geomTransf Linear 1 1.000 0.000 0.000 
puts "element"
element nonlinearBeamColumn 1 1 2 3 2 1
puts "shell element"
puts "SOLID element"
puts "recorder"
puts "gravity"
## Load Case = DEAD
pattern Plain 1 Linear {
load 2 0.000E+000 0.000E+000 -7.500E+006 0.000E+000 0.000E+000 0.000E+000
##注意：如果把这里的轴力逐渐增大，会发现push的荷载逐渐增大
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator LoadControl 1.000E-002
analysis Static
analyze 10

recorder Node -file node2.out -time -node 2 -dof 1 2 3 disp
##首先加了dead工况的竖向力，然后在此处先输出一个顶部节点的位移。
recorder Node -file node0.out -time -nodeRange 1 2 -dof 1 2 3 disp
loadConst 0.0
##恒定上述荷载，使其能延续至后续工况。

puts "pushover"
## Load Case = PUSH
pattern Plain 3 Linear {
load 2 1.000E+003 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator DisplacementControl 2 1 1.000E+000
analysis Static
analyze 100
