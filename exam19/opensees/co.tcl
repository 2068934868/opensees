wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
node 1 0.000E+000 7.000E+003 1.200E+004
node 2 0.000E+000 7.000E+003 1.500E+004
node 3 4.000E+003 7.000E+003 1.200E+004
node 4 4.000E+003 7.000E+003 1.500E+004
node 5 8.000E+003 7.000E+003 1.200E+004
node 6 8.000E+003 7.000E+003 1.500E+004
node 7 8.000E+003 3.500E+003 1.200E+004
node 8 8.000E+003 3.500E+003 1.500E+004
node 9 8.000E+003 0.000E+000 1.200E+004
node 10 8.000E+003 0.000E+000 1.500E+004
node 11 4.000E+003 0.000E+000 1.200E+004
node 12 4.000E+003 0.000E+000 1.500E+004
node 13 0.000E+000 3.500E+003 1.200E+004
node 14 0.000E+000 3.500E+003 1.500E+004
node 15 0.000E+000 0.000E+000 1.200E+004
node 16 0.000E+000 0.000E+000 1.500E+004
node 17 4.000E+003 3.500E+003 1.200E+004
node 18 4.000E+003 3.500E+003 1.500E+004
node 19 0.000E+000 7.000E+003 9.000E+003
node 20 4.000E+003 7.000E+003 9.000E+003
node 21 8.000E+003 7.000E+003 9.000E+003
node 22 8.000E+003 3.500E+003 9.000E+003
node 23 8.000E+003 0.000E+000 9.000E+003
node 24 4.000E+003 0.000E+000 9.000E+003
node 25 0.000E+000 3.500E+003 9.000E+003
node 26 0.000E+000 0.000E+000 9.000E+003
node 27 4.000E+003 3.500E+003 9.000E+003
node 28 0.000E+000 7.000E+003 6.000E+003
node 29 4.000E+003 7.000E+003 6.000E+003
node 30 8.000E+003 7.000E+003 6.000E+003
node 31 8.000E+003 3.500E+003 6.000E+003
node 32 8.000E+003 0.000E+000 6.000E+003
node 33 4.000E+003 0.000E+000 6.000E+003
node 34 0.000E+000 3.500E+003 6.000E+003
node 35 0.000E+000 0.000E+000 6.000E+003
node 36 4.000E+003 3.500E+003 6.000E+003
node 37 0.000E+000 7.000E+003 3.000E+003
node 38 4.000E+003 7.000E+003 3.000E+003
node 39 8.000E+003 7.000E+003 3.000E+003
node 40 8.000E+003 3.500E+003 3.000E+003
node 41 8.000E+003 0.000E+000 3.000E+003
node 42 4.000E+003 0.000E+000 3.000E+003
node 43 0.000E+000 3.500E+003 3.000E+003
node 44 0.000E+000 0.000E+000 3.000E+003
node 45 4.000E+003 3.500E+003 3.000E+003
node 46 0.000E+000 7.000E+003 0.000E+000
node 47 4.000E+003 7.000E+003 0.000E+000
node 48 8.000E+003 7.000E+003 0.000E+000
node 49 8.000E+003 3.500E+003 0.000E+000
node 50 8.000E+003 0.000E+000 0.000E+000
node 51 4.000E+003 0.000E+000 0.000E+000
node 52 0.000E+000 3.500E+003 0.000E+000
node 53 0.000E+000 0.000E+000 0.000E+000
node 54 4.000E+003 3.500E+003 0.000E+000
puts "rigidDiaphragm"
puts "mass"
mass 1 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 2 3.584E+000 3.584E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 3 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 4 6.522E+000 6.522E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 5 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 6 3.584E+000 3.584E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 7 6.906E+000 6.906E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 8 6.483E+000 6.483E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 9 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 10 3.584E+000 3.584E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 11 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 12 6.522E+000 6.522E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 13 7.062E+000 7.062E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 14 6.483E+000 6.483E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 15 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 16 3.584E+000 3.584E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 17 1.268E+001 1.268E+001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 18 1.225E+001 1.225E+001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 19 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 20 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 21 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 22 6.906E+000 6.906E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 23 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 24 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 25 7.062E+000 7.062E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 26 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 27 1.268E+001 1.268E+001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 28 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 29 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 30 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 31 6.906E+000 6.906E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 32 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 33 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 34 7.062E+000 7.062E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 35 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 36 1.268E+001 1.268E+001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 37 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 38 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 39 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 40 6.906E+000 6.906E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 41 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 42 6.944E+000 6.944E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 43 7.062E+000 7.062E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 44 4.006E+000 4.006E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 45 1.268E+001 1.268E+001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 46 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 47 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 48 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 49 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 50 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 51 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 52 5.787E-001 5.787E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 53 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 54 4.227E-001 4.227E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
puts "node"
fix 46 1 1 1 1 1 1;
fix 47 1 1 1 1 1 1;
fix 48 1 1 1 1 1 1;
fix 49 1 1 1 1 1 1;
fix 50 1 1 1 1 1 1;
fix 51 1 1 1 1 1 1;
fix 52 1 1 1 1 1 1;
fix 53 1 1 1 1 1 1;
fix 54 1 1 1 1 1 1;
puts "Equal DOF"
puts "material"
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Elastic 2 2.550E+004
uniaxialMaterial Elastic 3 3.000E+004
# uniaxialMaterial Maxwell $matTag              $K              $C              $a          $Length
uniaxialMaterial   Maxwell    4   100000      3000    1   1
uniaxialMaterial Elastic 201 7.923E+008
uniaxialMaterial Elastic 301 1.585E+009
uniaxialMaterial Elastic 401 3.803E+011
uniaxialMaterial Elastic 202 7.923E+008
uniaxialMaterial Elastic 302 5.282E+008
uniaxialMaterial Elastic 402 2.113E+011
uniaxialMaterial Elastic 203 2.641E+008
uniaxialMaterial Elastic 303 2.641E+008
uniaxialMaterial Elastic 403 2.113E+010
##DAMPER 
section Fiber 3 {
fiber	 0.01	0.01	  1250	  4
fiber	 -0.01	0.01	  1250	  4
fiber	 -0.01   -0.01  1250	   4
fiber	 0.01	-0.01   1250    4
}
section Aggregator 1003 203 Vy 303 Vz 403 T -section 3
puts "transformation"
geomTransf Linear 1 1.000 0.000 0.000 
geomTransf Linear 2 1.000 0.000 0.000 
geomTransf Linear 3 0.000 1.000 0.000 
geomTransf Linear 4 0.000 1.000 0.000 
geomTransf Linear 5 1.000 0.000 0.000 
geomTransf Linear 6 1.000 0.000 0.000 
geomTransf Linear 7 0.000 1.000 0.000 
geomTransf Linear 8 0.000 1.000 0.000 
geomTransf Linear 9 1.000 0.000 0.000 
geomTransf Linear 10 0.000 0.000 1.000 
geomTransf Linear 11 0.000 0.000 1.000 
geomTransf Linear 12 0.000 0.000 1.000 
geomTransf Linear 13 0.000 0.000 1.000 
geomTransf Linear 14 0.000 0.000 1.000 
geomTransf Linear 15 0.000 0.000 1.000 
geomTransf Linear 16 0.000 0.000 1.000 
geomTransf Linear 17 0.000 0.000 1.000 
geomTransf Linear 18 0.000 0.000 1.000 
geomTransf Linear 19 0.000 0.000 1.000 
geomTransf Linear 20 0.000 0.000 1.000 
geomTransf Linear 21 0.000 0.000 1.000 
geomTransf Linear 22 -0.600 0.000 0.800 
geomTransf Linear 23 1.000 0.000 0.000 
geomTransf Linear 24 1.000 0.000 0.000 
geomTransf Linear 25 0.000 1.000 0.000 
geomTransf Linear 26 0.000 1.000 0.000 
geomTransf Linear 27 1.000 0.000 0.000 
geomTransf Linear 28 1.000 0.000 0.000 
geomTransf Linear 29 0.000 1.000 0.000 
geomTransf Linear 30 0.000 1.000 0.000 
geomTransf Linear 31 1.000 0.000 0.000 
geomTransf Linear 32 0.000 0.000 1.000 
geomTransf Linear 33 0.000 0.000 1.000 
geomTransf Linear 34 0.000 0.000 1.000 
geomTransf Linear 35 0.000 0.000 1.000 
geomTransf Linear 36 0.000 0.000 1.000 
geomTransf Linear 37 0.000 0.000 1.000 
geomTransf Linear 38 0.000 0.000 1.000 
geomTransf Linear 39 0.000 0.000 1.000 
geomTransf Linear 40 0.000 0.000 1.000 
geomTransf Linear 41 0.000 0.000 1.000 
geomTransf Linear 42 0.000 0.000 1.000 
geomTransf Linear 43 0.000 0.000 1.000 
geomTransf Linear 44 -0.600 0.000 0.800 
geomTransf Linear 45 1.000 0.000 0.000 
geomTransf Linear 46 1.000 0.000 0.000 
geomTransf Linear 47 0.000 1.000 0.000 
geomTransf Linear 48 0.000 1.000 0.000 
geomTransf Linear 49 1.000 0.000 0.000 
geomTransf Linear 50 1.000 0.000 0.000 
geomTransf Linear 51 0.000 1.000 0.000 
geomTransf Linear 52 0.000 1.000 0.000 
geomTransf Linear 53 1.000 0.000 0.000 
geomTransf Linear 54 0.000 0.000 1.000 
geomTransf Linear 55 0.000 0.000 1.000 
geomTransf Linear 56 0.000 0.000 1.000 
geomTransf Linear 57 0.000 0.000 1.000 
geomTransf Linear 58 0.000 0.000 1.000 
geomTransf Linear 59 0.000 0.000 1.000 
geomTransf Linear 60 0.000 0.000 1.000 
geomTransf Linear 61 0.000 0.000 1.000 
geomTransf Linear 62 0.000 0.000 1.000 
geomTransf Linear 63 0.000 0.000 1.000 
geomTransf Linear 64 0.000 0.000 1.000 
geomTransf Linear 65 0.000 0.000 1.000 
geomTransf Linear 66 -0.600 0.000 0.800 
geomTransf Linear 67 1.000 0.000 0.000 
geomTransf Linear 68 1.000 0.000 0.000 
geomTransf Linear 69 0.000 1.000 0.000 
geomTransf Linear 70 0.000 1.000 0.000 
geomTransf Linear 71 1.000 0.000 0.000 
geomTransf Linear 72 1.000 0.000 0.000 
geomTransf Linear 73 0.000 1.000 0.000 
geomTransf Linear 74 0.000 1.000 0.000 
geomTransf Linear 75 1.000 0.000 0.000 
geomTransf Linear 76 0.000 0.000 1.000 
geomTransf Linear 77 0.000 0.000 1.000 
geomTransf Linear 78 0.000 0.000 1.000 
geomTransf Linear 79 0.000 0.000 1.000 
geomTransf Linear 80 0.000 0.000 1.000 
geomTransf Linear 81 0.000 0.000 1.000 
geomTransf Linear 82 0.000 0.000 1.000 
geomTransf Linear 83 0.000 0.000 1.000 
geomTransf Linear 84 0.000 0.000 1.000 
geomTransf Linear 85 0.000 0.000 1.000 
geomTransf Linear 86 0.000 0.000 1.000 
geomTransf Linear 87 0.000 0.000 1.000 
geomTransf Linear 88 -0.600 0.000 0.800 
geomTransf Linear 89 1.000 0.000 0.000 
geomTransf Linear 90 1.000 0.000 0.000 
geomTransf Linear 91 0.000 1.000 0.000 
geomTransf Linear 92 0.000 1.000 0.000 
geomTransf Linear 93 1.000 0.000 0.000 
geomTransf Linear 94 1.000 0.000 0.000 
geomTransf Linear 95 0.000 1.000 0.000 
geomTransf Linear 96 0.000 1.000 0.000 
geomTransf Linear 97 1.000 0.000 0.000 
geomTransf Linear 98 0.000 0.000 1.000 
geomTransf Linear 99 0.000 0.000 1.000 
geomTransf Linear 100 0.000 0.000 1.000 
geomTransf Linear 101 0.000 0.000 1.000 
geomTransf Linear 102 0.000 0.000 1.000 
geomTransf Linear 103 0.000 0.000 1.000 
geomTransf Linear 104 0.000 0.000 1.000 
geomTransf Linear 105 0.000 0.000 1.000 
geomTransf Linear 106 0.000 0.000 1.000 
geomTransf Linear 107 0.000 0.000 1.000 
geomTransf Linear 108 0.000 0.000 1.000 
geomTransf Linear 109 0.000 0.000 1.000 
geomTransf Linear 110 -0.600 0.000 0.800 
puts "element"
puts "element"
element elasticBeamColumn 1 1 2 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 1
element elasticBeamColumn 2 3 4 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 2
element elasticBeamColumn 3 5 6 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 3
element elasticBeamColumn 4 7 8 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 4
element elasticBeamColumn 5 9 10 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 5
element elasticBeamColumn 6 11 12 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 6
element elasticBeamColumn 7 13 14 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 7
element elasticBeamColumn 8 15 16 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 8
element elasticBeamColumn 9 17 18 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 9
element elasticBeamColumn 10 2 4 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 10
element elasticBeamColumn 11 4 6 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 11
element elasticBeamColumn 12 14 18 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 12
element elasticBeamColumn 13 18 8 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 13
element elasticBeamColumn 14 16 12 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 14
element elasticBeamColumn 15 12 10 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 15
element elasticBeamColumn 16 16 14 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 16
element elasticBeamColumn 17 14 2 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 17
element elasticBeamColumn 18 12 18 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 18
element elasticBeamColumn 19 18 4 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 19
element elasticBeamColumn 20 10 8 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 20
element elasticBeamColumn 21 8 6 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 21
element nonlinearBeamColumn 22 13 18 3 1003 22
element elasticBeamColumn 23 19 1 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 23
element elasticBeamColumn 24 20 3 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 24
element elasticBeamColumn 25 21 5 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 25
element elasticBeamColumn 26 22 7 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 26
element elasticBeamColumn 27 23 9 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 27
element elasticBeamColumn 28 24 11 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 28
element elasticBeamColumn 29 25 13 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 29
element elasticBeamColumn 30 26 15 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 30
element elasticBeamColumn 31 27 17 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 31
element elasticBeamColumn 32 1 3 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 32
element elasticBeamColumn 33 3 5 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 33
element elasticBeamColumn 34 13 17 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 34
element elasticBeamColumn 35 17 7 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 35
element elasticBeamColumn 36 15 11 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 36
element elasticBeamColumn 37 11 9 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 37
element elasticBeamColumn 38 15 13 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 38
element elasticBeamColumn 39 13 1 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 39
element elasticBeamColumn 40 11 17 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 40
element elasticBeamColumn 41 17 3 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 41
element elasticBeamColumn 42 9 7 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 42
element elasticBeamColumn 43 7 5 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 43
element nonlinearBeamColumn 44 25 17 3 1003 44
element elasticBeamColumn 45 28 19 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 45
element elasticBeamColumn 46 29 20 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 46
element elasticBeamColumn 47 30 21 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 47
element elasticBeamColumn 48 31 22 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 48
element elasticBeamColumn 49 32 23 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 49
element elasticBeamColumn 50 33 24 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 50
element elasticBeamColumn 51 34 25 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 51
element elasticBeamColumn 52 35 26 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 52
element elasticBeamColumn 53 36 27 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 53
element elasticBeamColumn 54 19 20 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 54
element elasticBeamColumn 55 20 21 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 55
element elasticBeamColumn 56 25 27 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 56
element elasticBeamColumn 57 27 22 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 57
element elasticBeamColumn 58 26 24 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 58
element elasticBeamColumn 59 24 23 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 59
element elasticBeamColumn 60 26 25 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 60
element elasticBeamColumn 61 25 19 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 61
element elasticBeamColumn 62 24 27 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 62
element elasticBeamColumn 63 27 20 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 63
element elasticBeamColumn 64 23 22 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 64
element elasticBeamColumn 65 22 21 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 65
element nonlinearBeamColumn 66 34 27 3 1003 66
element elasticBeamColumn 67 37 28 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 67
element elasticBeamColumn 68 38 29 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 68
element elasticBeamColumn 69 39 30 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 69
element elasticBeamColumn 70 40 31 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 70
element elasticBeamColumn 71 41 32 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 71
element elasticBeamColumn 72 42 33 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 72
element elasticBeamColumn 73 43 34 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 73
element elasticBeamColumn 74 44 35 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 74
element elasticBeamColumn 75 45 36 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 75
element elasticBeamColumn 76 28 29 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 76
element elasticBeamColumn 77 29 30 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 77
element elasticBeamColumn 78 34 36 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 78
element elasticBeamColumn 79 36 31 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 79
element elasticBeamColumn 80 35 33 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 80
element elasticBeamColumn 81 33 32 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 81
element elasticBeamColumn 82 35 34 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 82
element elasticBeamColumn 83 34 28 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 83
element elasticBeamColumn 84 33 36 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 84
element elasticBeamColumn 85 36 29 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 85
element elasticBeamColumn 86 32 31 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 86
element elasticBeamColumn 87 31 30 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 87
element nonlinearBeamColumn 88 43 36 3 1003 88
element elasticBeamColumn 89 46 37 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 89
element elasticBeamColumn 90 47 38 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 90
element elasticBeamColumn 91 48 39 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 91
element elasticBeamColumn 92 49 40 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 92
element elasticBeamColumn 93 50 41 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 93
element elasticBeamColumn 94 51 42 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 94
element elasticBeamColumn 95 52 43 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 95
element elasticBeamColumn 96 53 44 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 96
element elasticBeamColumn 97 54 45 3.520E+004 2.060E+005 7.923E+004 4.800E+006 2.378E+009 7.204E+008 97
element elasticBeamColumn 98 37 38 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 98
element elasticBeamColumn 99 38 39 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 99
element elasticBeamColumn 100 43 45 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 100
element elasticBeamColumn 101 45 40 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 101
element elasticBeamColumn 102 44 42 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 102
element elasticBeamColumn 103 42 41 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 103
element elasticBeamColumn 104 44 43 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 104
element elasticBeamColumn 105 43 37 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 105
element elasticBeamColumn 106 42 45 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 106
element elasticBeamColumn 107 45 38 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 107
element elasticBeamColumn 108 41 40 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 108
element elasticBeamColumn 109 40 39 1.920E+004 2.060E+005 7.923E+004 2.667E+006 1.033E+009 2.707E+007 109
element nonlinearBeamColumn 110 52 45 3 1003 110
puts "shell element"
puts "recorder"
recorder Element -file ele110.out -time -ele 110 localForce
recorder Node -file disp45.out -time -node 45 -dof 1  disp
recorder Node -file vel45.out -time -node 45 -dof 1  vel
recorder Node -file disp14.out -time -node 14 -dof 1  disp
 
set xDamp 0.02;
set nEigenI 1;
set nEigenJ 2;
set lambdaN [eigen [expr $nEigenJ]];
set lambdaI [lindex $lambdaN [expr $nEigenI-1]];
set lambdaJ [lindex $lambdaN [expr $nEigenJ-1]];
set omegaI [expr pow($lambdaI,0.5)]; 
set omegaJ [expr pow($lambdaJ,0.5)];
set alphaM [expr $xDamp*(2*$omegaI*$omegaJ)/($omegaI+$omegaJ)]; 
set betaKcurr [expr 2.*$xDamp/($omegaI+$omegaJ)];   
rayleigh $alphaM $betaKcurr 0 0  
  
set IDloadTag 1001;
set iGMfile "GM1X.txt";
set iGMdirection "1"; 
set iGMfact "5";  
set dt 0.02;   
foreach GMdirection $iGMdirection GMfile $iGMfile GMfact $iGMfact { 
incr IDloadTag; 
set GMfatt [expr 1*$iGMfact];  
set AccelSeries "Series -dt $dt -filePath $iGMfile -factor  $GMfatt";
pattern UniformExcitation  $IDloadTag  $GMdirection -accel  $AccelSeries; 
}  
  
constraints Transformation; 
numberer Plain;  
system UmfPack; 
test EnergyIncr 1.0e-4 200; 
algorithm Newton 
integrator Newmark 0.5 0.25 
analysis Transient
analyze 1000 0.02
