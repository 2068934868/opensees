wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
node 1 -6.750E+003 -4.500E+003 3.000E+003
node 2 -6.750E+003 0.000E+000 3.000E+003
node 3 -6.750E+003 4.500E+003 3.000E+003
node 4 -2.250E+003 -4.500E+003 3.000E+003
node 5 -2.250E+003 0.000E+000 3.000E+003
node 6 -2.250E+003 4.500E+003 3.000E+003
node 7 2.250E+003 -4.500E+003 3.000E+003
node 8 2.250E+003 0.000E+000 3.000E+003
node 9 2.250E+003 4.500E+003 3.000E+003
node 10 6.750E+003 -4.500E+003 3.000E+003
node 11 6.750E+003 0.000E+000 3.000E+003
node 12 6.750E+003 4.500E+003 3.000E+003
node 13 -6.750E+003 -4.500E+003 6.000E+003
node 14 -6.750E+003 0.000E+000 6.000E+003
node 15 -6.750E+003 4.500E+003 6.000E+003
node 16 -2.250E+003 -4.500E+003 6.000E+003
node 17 -2.250E+003 0.000E+000 6.000E+003
node 18 -2.250E+003 4.500E+003 6.000E+003
node 19 2.250E+003 -4.500E+003 6.000E+003
node 20 2.250E+003 0.000E+000 6.000E+003
node 21 2.250E+003 4.500E+003 6.000E+003
node 22 6.750E+003 -4.500E+003 6.000E+003
node 23 6.750E+003 0.000E+000 6.000E+003
node 24 6.750E+003 4.500E+003 6.000E+003
node 25 -6.750E+003 -4.500E+003 9.000E+003
node 26 -6.750E+003 0.000E+000 9.000E+003
node 27 -6.750E+003 4.500E+003 9.000E+003
node 28 -2.250E+003 -4.500E+003 9.000E+003
node 29 -2.250E+003 0.000E+000 9.000E+003
node 30 -2.250E+003 4.500E+003 9.000E+003
node 31 2.250E+003 -4.500E+003 9.000E+003
node 32 2.250E+003 0.000E+000 9.000E+003
node 33 2.250E+003 4.500E+003 9.000E+003
node 34 6.750E+003 -4.500E+003 9.000E+003
node 35 6.750E+003 0.000E+000 9.000E+003
node 36 6.750E+003 4.500E+003 9.000E+003
node 37 -6.750E+003 -4.500E+003 1.200E+004
node 38 -6.750E+003 0.000E+000 1.200E+004
node 39 -6.750E+003 4.500E+003 1.200E+004
node 40 -2.250E+003 -4.500E+003 1.200E+004
node 41 -2.250E+003 0.000E+000 1.200E+004
node 42 -2.250E+003 4.500E+003 1.200E+004
node 43 2.250E+003 -4.500E+003 1.200E+004
node 44 2.250E+003 0.000E+000 1.200E+004
node 45 2.250E+003 4.500E+003 1.200E+004
node 46 6.750E+003 -4.500E+003 1.200E+004
node 47 6.750E+003 0.000E+000 1.200E+004
node 48 6.750E+003 4.500E+003 1.200E+004
node 49 -6.750E+003 -4.500E+003 1.500E+004
node 50 -6.750E+003 0.000E+000 1.500E+004
node 51 -6.750E+003 4.500E+003 1.500E+004
node 52 -2.250E+003 -4.500E+003 1.500E+004
node 53 -2.250E+003 0.000E+000 1.500E+004
node 54 -2.250E+003 4.500E+003 1.500E+004
node 55 2.250E+003 -4.500E+003 1.500E+004
node 56 2.250E+003 0.000E+000 1.500E+004
node 57 2.250E+003 4.500E+003 1.500E+004
node 58 6.750E+003 -4.500E+003 1.500E+004
node 59 6.750E+003 0.000E+000 1.500E+004
node 60 6.750E+003 4.500E+003 1.500E+004
node 61 -6.750E+003 4.500E+003 0.000E+000
node 62 -2.250E+003 4.500E+003 0.000E+000
node 63 2.250E+003 4.500E+003 0.000E+000
node 64 6.750E+003 4.500E+003 0.000E+000
node 65 -6.750E+003 -4.500E+003 0.000E+000
node 66 -2.250E+003 -4.500E+003 0.000E+000
node 67 2.250E+003 -4.500E+003 0.000E+000
node 68 6.750E+003 -4.500E+003 0.000E+000
node 69 -6.750E+003 0.000E+000 0.000E+000
node 70 -2.250E+003 0.000E+000 0.000E+000
node 71 2.250E+003 0.000E+000 0.000E+000
node 72 6.750E+003 0.000E+000 0.000E+000
puts "rigidDiaphragm"
puts "mass"
puts "node"
fix 61 1 1 1 1 1 1;
fix 62 1 1 1 1 1 1;
fix 63 1 1 1 1 1 1;
fix 64 1 1 1 1 1 1;
fix 65 1 1 1 1 1 1;
fix 66 1 1 1 1 1 1;
fix 67 1 1 1 1 1 1;
fix 68 1 1 1 1 1 1;
fix 69 1 1 1 1 1 1;
fix 70 1 1 1 1 1 1;
fix 71 1 1 1 1 1 1;
fix 72 1 1 1 1 1 1;
puts "Equal DOF"
puts "material"
uniaxialMaterial Elastic 1 2.482E+004
uniaxialMaterial Elastic 2 1.999E+005
uniaxialMaterial Elastic 3 1.999E+005

##C400*400 
section Fiber 2 -GJ 4.507E+013 {
fiber -1.600E+002 -1.600E+002 6.400E+003 1
fiber -8.000E+001 -1.600E+002 6.400E+003 1
fiber 0.000E+000 -1.600E+002 6.400E+003 1
fiber 8.000E+001 -1.600E+002 6.400E+003 1
fiber 1.600E+002 -1.600E+002 6.400E+003 1
fiber -1.600E+002 -8.000E+001 6.400E+003 1
fiber -8.000E+001 -8.000E+001 6.400E+003 1
fiber 0.000E+000 -8.000E+001 6.400E+003 1
fiber 8.000E+001 -8.000E+001 6.400E+003 1
fiber 1.600E+002 -8.000E+001 6.400E+003 1
fiber -1.600E+002 0.000E+000 6.400E+003 1
fiber -8.000E+001 0.000E+000 6.400E+003 1
fiber 0.000E+000 0.000E+000 6.400E+003 1
fiber 8.000E+001 0.000E+000 6.400E+003 1
fiber 1.600E+002 0.000E+000 6.400E+003 1
fiber -1.600E+002 8.000E+001 6.400E+003 1
fiber -8.000E+001 8.000E+001 6.400E+003 1
fiber 0.000E+000 8.000E+001 6.400E+003 1
fiber 8.000E+001 8.000E+001 6.400E+003 1
fiber 1.600E+002 8.000E+001 6.400E+003 1
fiber -1.600E+002 1.600E+002 6.400E+003 1
fiber -8.000E+001 1.600E+002 6.400E+003 1
fiber 0.000E+000 1.600E+002 6.400E+003 1
fiber 8.000E+001 1.600E+002 6.400E+003 1
fiber 1.600E+002 1.600E+002 6.400E+003 1
fiber -1.650E+002 -1.650E+002 2.000E+002 1
fiber -8.250E+001 -1.650E+002 2.000E+002 1
fiber 0.000E+000 -1.650E+002 2.000E+002 1
fiber 8.250E+001 -1.650E+002 2.000E+002 1
fiber 1.650E+002 -1.650E+002 2.000E+002 1
fiber -1.650E+002 1.650E+002 2.000E+002 1
fiber -8.250E+001 1.650E+002 2.000E+002 1
fiber 0.000E+000 1.650E+002 2.000E+002 1
fiber 8.250E+001 1.650E+002 2.000E+002 1
fiber 1.650E+002 1.650E+002 2.000E+002 1
fiber -1.650E+002 -1.100E+002 2.000E+002 1
fiber -1.650E+002 -5.500E+001 2.000E+002 1
fiber -1.650E+002 0.000E+000 2.000E+002 1
fiber -1.650E+002 5.500E+001 2.000E+002 1
fiber -1.650E+002 1.100E+002 2.000E+002 1
fiber 1.650E+002 -1.100E+002 2.000E+002 1
fiber 1.650E+002 -5.500E+001 2.000E+002 1
fiber 1.650E+002 0.000E+000 2.000E+002 1
fiber 1.650E+002 5.500E+001 2.000E+002 1
fiber 1.650E+002 1.100E+002 2.000E+002 1
}

puts "transformation"
geomTransf Linear 1 0.000 0.000 1.000 
geomTransf Linear 2 0.000 0.000 1.000 
geomTransf Linear 3 0.000 0.000 1.000 
geomTransf Linear 4 0.000 0.000 1.000 
geomTransf Linear 5 0.000 0.000 1.000 
geomTransf Linear 6 0.000 0.000 1.000 
geomTransf Linear 7 0.000 0.000 1.000 
geomTransf Linear 8 0.000 0.000 1.000 
geomTransf Linear 9 0.000 0.000 1.000 
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
geomTransf Linear 22 0.000 0.000 1.000 
geomTransf Linear 23 0.000 0.000 1.000 
geomTransf Linear 24 0.000 0.000 1.000 
geomTransf Linear 25 0.000 0.000 1.000 
geomTransf Linear 26 0.000 0.000 1.000 
geomTransf Linear 27 0.000 0.000 1.000 
geomTransf Linear 28 0.000 0.000 1.000 
geomTransf Linear 29 0.000 0.000 1.000 
geomTransf Linear 30 0.000 0.000 1.000 
geomTransf Linear 31 0.000 0.000 1.000 
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
geomTransf Linear 44 0.000 0.000 1.000 
geomTransf Linear 45 0.000 0.000 1.000 
geomTransf Linear 46 0.000 0.000 1.000 
geomTransf Linear 47 0.000 0.000 1.000 
geomTransf Linear 48 0.000 0.000 1.000 
geomTransf Linear 49 0.000 0.000 1.000 
geomTransf Linear 50 0.000 0.000 1.000 
geomTransf Linear 51 0.000 0.000 1.000 
geomTransf Linear 52 0.000 0.000 1.000 
geomTransf Linear 53 0.000 0.000 1.000 
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
geomTransf Linear 66 0.000 0.000 1.000 
geomTransf Linear 67 0.000 0.000 1.000 
geomTransf Linear 68 0.000 0.000 1.000 
geomTransf Linear 69 0.000 0.000 1.000 
geomTransf Linear 70 0.000 0.000 1.000 
geomTransf Linear 71 0.000 0.000 1.000 
geomTransf Linear 72 0.000 0.000 1.000 
geomTransf Linear 73 0.000 0.000 1.000 
geomTransf Linear 74 0.000 0.000 1.000 
geomTransf Linear 75 0.000 0.000 1.000 
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
puts "element"
element elasticBeamColumn 1 1 2 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 1
element elasticBeamColumn 2 2 3 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 2
element elasticBeamColumn 3 4 5 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 3
element elasticBeamColumn 4 5 6 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 4
element elasticBeamColumn 5 7 8 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 5
element elasticBeamColumn 6 8 9 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 6
element elasticBeamColumn 7 10 11 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 7
element elasticBeamColumn 8 11 12 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 8
element elasticBeamColumn 9 1 4 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 9
element elasticBeamColumn 10 4 7 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 10
element elasticBeamColumn 11 7 10 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 11
element elasticBeamColumn 12 2 5 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 12
element elasticBeamColumn 13 5 8 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 13
element elasticBeamColumn 14 8 11 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 14
element elasticBeamColumn 15 3 6 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 15
element elasticBeamColumn 16 6 9 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 16
element elasticBeamColumn 17 9 12 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 17
element elasticBeamColumn 18 13 14 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 18
element elasticBeamColumn 19 14 15 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 19
element elasticBeamColumn 20 16 17 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 20
element elasticBeamColumn 21 17 18 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 21
element elasticBeamColumn 22 19 20 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 22
element elasticBeamColumn 23 20 21 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 23
element elasticBeamColumn 24 22 23 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 24
element elasticBeamColumn 25 23 24 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 25
element elasticBeamColumn 26 13 16 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 26
element elasticBeamColumn 27 16 19 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 27
element elasticBeamColumn 28 19 22 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 28
element elasticBeamColumn 29 14 17 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 29
element elasticBeamColumn 30 17 20 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 30
element elasticBeamColumn 31 20 23 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 31
element elasticBeamColumn 32 15 18 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 32
element elasticBeamColumn 33 18 21 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 33
element elasticBeamColumn 34 21 24 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 34
element elasticBeamColumn 35 25 26 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 35
element elasticBeamColumn 36 26 27 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 36
element elasticBeamColumn 37 28 29 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 37
element elasticBeamColumn 38 29 30 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 38
element elasticBeamColumn 39 31 32 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 39
element elasticBeamColumn 40 32 33 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 40
element elasticBeamColumn 41 34 35 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 41
element elasticBeamColumn 42 35 36 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 42
element elasticBeamColumn 43 25 28 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 43
element elasticBeamColumn 44 28 31 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 44
element elasticBeamColumn 45 31 34 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 45
element elasticBeamColumn 46 26 29 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 46
element elasticBeamColumn 47 29 32 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 47
element elasticBeamColumn 48 32 35 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 48
element elasticBeamColumn 49 27 30 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 49
element elasticBeamColumn 50 30 33 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 50
element elasticBeamColumn 51 33 36 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 51
element elasticBeamColumn 52 37 38 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 52
element elasticBeamColumn 53 38 39 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 53
element elasticBeamColumn 54 40 41 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 54
element elasticBeamColumn 55 41 42 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 55
element elasticBeamColumn 56 43 44 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 56
element elasticBeamColumn 57 44 45 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 57
element elasticBeamColumn 58 46 47 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 58
element elasticBeamColumn 59 47 48 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 59
element elasticBeamColumn 60 37 40 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 60
element elasticBeamColumn 61 40 43 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 61
element elasticBeamColumn 62 43 46 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 62
element elasticBeamColumn 63 38 41 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 63
element elasticBeamColumn 64 41 44 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 64
element elasticBeamColumn 65 44 47 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 65
element elasticBeamColumn 66 39 42 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 66
element elasticBeamColumn 67 42 45 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 67
element elasticBeamColumn 68 45 48 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 68
element elasticBeamColumn 69 49 50 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 69
element elasticBeamColumn 70 50 51 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 70
element elasticBeamColumn 71 52 53 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 71
element elasticBeamColumn 72 53 54 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 72
element elasticBeamColumn 73 55 56 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 73
element elasticBeamColumn 74 56 57 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 74
element elasticBeamColumn 75 58 59 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 75
element elasticBeamColumn 76 59 60 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 76
element elasticBeamColumn 77 49 52 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 77
element elasticBeamColumn 78 52 55 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 78
element elasticBeamColumn 79 55 58 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 79
element elasticBeamColumn 80 50 53 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 80
element elasticBeamColumn 81 53 56 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 81
element elasticBeamColumn 82 56 59 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 82
element elasticBeamColumn 83 51 54 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 83
element elasticBeamColumn 84 54 57 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 84
element elasticBeamColumn 85 57 60 1.200E+005 3.000E+004 1.250E+004 1.944E+009 1.600E+009 9.000E+008 85
element corotTrussSection 86 61 3 2
element corotTrussSection 87 3 15 2
element corotTrussSection 88 15 27 2
element corotTrussSection 89 27 39 2
element corotTrussSection 90 39 51 2
element corotTrussSection 91 62 6 2
element corotTrussSection 92 6 18 2
element corotTrussSection 93 18 30 2
element corotTrussSection 94 30 42 2
element corotTrussSection 95 42 54 2
element corotTrussSection 96 63 9 2
element corotTrussSection 97 9 21 2
element corotTrussSection 98 21 33 2
element corotTrussSection 99 33 45 2
element corotTrussSection 100 45 57 2
element corotTrussSection 101 64 12 2
element corotTrussSection 102 12 24 2
element corotTrussSection 103 24 36 2
element corotTrussSection 104 36 48 2
element corotTrussSection 105 48 60 2
element corotTrussSection 106 65 1 2
element corotTrussSection 107 1 13 2
element corotTrussSection 108 13 25 2
element corotTrussSection 109 25 37 2
element corotTrussSection 110 37 49 2
element corotTrussSection 111 66 4 2
element corotTrussSection 112 4 16 2
element corotTrussSection 113 16 28 2
element corotTrussSection 114 28 40 2
element corotTrussSection 115 40 52 2
element corotTrussSection 116 67 7 2
element corotTrussSection 117 7 19 2
element corotTrussSection 118 19 31 2
element corotTrussSection 119 31 43 2
element corotTrussSection 120 43 55 2
element corotTrussSection 121 68 10 2
element corotTrussSection 122 10 22 2
element corotTrussSection 123 22 34 2
element corotTrussSection 124 34 46 2
element corotTrussSection 125 46 58 2
element corotTrussSection 126 69 2 2
element corotTrussSection 127 2 14 2
element corotTrussSection 128 14 26 2
element corotTrussSection 129 26 38 2
element corotTrussSection 130 38 50 2
element corotTrussSection 131 70 5 2
element corotTrussSection 132 5 17 2
element corotTrussSection 133 17 29 2
element corotTrussSection 134 29 41 2
element corotTrussSection 135 41 53 2
element corotTrussSection 136 71 8 2
element corotTrussSection 137 8 20 2
element corotTrussSection 138 20 32 2
element corotTrussSection 139 32 44 2
element corotTrussSection 140 44 56 2
element corotTrussSection 141 72 11 2
element corotTrussSection 142 11 23 2
element corotTrussSection 143 23 35 2
element corotTrussSection 144 35 47 2
element corotTrussSection 145 47 59 2
puts "shell element"
puts "SOLID element"
puts "recorder"
recorder Node -file node0.out -time -nodeRange 1 36 -dof 1 2 3 disp
recorder Node -file node60.out -time -node 60 -dof 1 2 3 disp
 
set xDamp 0.05;
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
set iGMfile "GMX.txt";
##地震波文件
set iGMdirection "1"; 
##地震波方向，1代表X
set iGMfact "0.276";  
##地震波系数
set dt 0.02;   
##时间间隔
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
