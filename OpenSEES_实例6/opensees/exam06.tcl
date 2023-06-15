wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
node 1 0.000E+000 0.000E+000 9.000E+003
node 2 0.000E+000 0.000E+000 1.200E+004
node 3 0.000E+000 6.000E+003 9.000E+003
node 4 0.000E+000 6.000E+003 1.200E+004
node 5 6.000E+003 0.000E+000 9.000E+003
node 6 6.000E+003 0.000E+000 1.200E+004
node 7 6.000E+003 6.000E+003 9.000E+003
node 8 6.000E+003 6.000E+003 1.200E+004
node 9 1.200E+004 0.000E+000 9.000E+003
node 10 1.200E+004 0.000E+000 1.200E+004
node 11 1.200E+004 6.000E+003 9.000E+003
node 12 1.200E+004 6.000E+003 1.200E+004
node 13 1.800E+004 0.000E+000 9.000E+003
node 14 1.800E+004 0.000E+000 1.200E+004
node 15 1.800E+004 6.000E+003 9.000E+003
node 16 1.800E+004 6.000E+003 1.200E+004
node 17 7.000E+003 0.000E+000 9.500E+003
node 18 8.000E+003 0.000E+000 1.000E+004
node 19 9.000E+003 0.000E+000 1.050E+004
node 20 1.000E+004 0.000E+000 1.100E+004
node 21 1.100E+004 0.000E+000 1.150E+004
node 22 7.000E+003 6.000E+003 9.500E+003
node 23 8.000E+003 6.000E+003 1.000E+004
node 24 9.000E+003 6.000E+003 1.050E+004
node 25 1.000E+004 6.000E+003 1.100E+004
node 26 1.100E+004 6.000E+003 1.150E+004
node 27 7.000E+003 0.000E+000 6.500E+003
node 28 8.000E+003 0.000E+000 7.000E+003
node 29 9.000E+003 0.000E+000 7.500E+003
node 30 1.000E+004 0.000E+000 8.000E+003
node 31 1.100E+004 0.000E+000 8.500E+003
node 32 7.000E+003 6.000E+003 6.500E+003
node 33 8.000E+003 6.000E+003 7.000E+003
node 34 9.000E+003 6.000E+003 7.500E+003
node 35 1.000E+004 6.000E+003 8.000E+003
node 36 1.100E+004 6.000E+003 8.500E+003
node 37 0.000E+000 0.000E+000 6.000E+003
node 38 0.000E+000 6.000E+003 6.000E+003
node 39 6.000E+003 0.000E+000 6.000E+003
node 40 6.000E+003 6.000E+003 6.000E+003
node 41 1.200E+004 0.000E+000 6.000E+003
node 42 1.200E+004 6.000E+003 6.000E+003
node 43 1.800E+004 0.000E+000 6.000E+003
node 44 1.800E+004 6.000E+003 6.000E+003
node 45 7.000E+003 0.000E+000 3.500E+003
node 46 8.000E+003 0.000E+000 4.000E+003
node 47 9.000E+003 0.000E+000 4.500E+003
node 48 1.000E+004 0.000E+000 5.000E+003
node 49 1.100E+004 0.000E+000 5.500E+003
node 50 7.000E+003 6.000E+003 3.500E+003
node 51 8.000E+003 6.000E+003 4.000E+003
node 52 9.000E+003 6.000E+003 4.500E+003
node 53 1.000E+004 6.000E+003 5.000E+003
node 54 1.100E+004 6.000E+003 5.500E+003
node 55 0.000E+000 0.000E+000 3.000E+003
node 56 0.000E+000 6.000E+003 3.000E+003
node 57 6.000E+003 0.000E+000 3.000E+003
node 58 6.000E+003 6.000E+003 3.000E+003
node 59 1.200E+004 0.000E+000 3.000E+003
node 60 1.200E+004 6.000E+003 3.000E+003
node 61 1.800E+004 0.000E+000 3.000E+003
node 62 1.800E+004 6.000E+003 3.000E+003
node 63 7.000E+003 0.000E+000 5.000E+002
node 64 8.000E+003 0.000E+000 1.000E+003
node 65 9.000E+003 0.000E+000 1.500E+003
node 66 1.000E+004 0.000E+000 2.000E+003
node 67 1.100E+004 0.000E+000 2.500E+003
node 68 7.000E+003 6.000E+003 5.000E+002
node 69 8.000E+003 6.000E+003 1.000E+003
node 70 9.000E+003 6.000E+003 1.500E+003
node 71 1.000E+004 6.000E+003 2.000E+003
node 72 1.100E+004 6.000E+003 2.500E+003
node 73 0.000E+000 0.000E+000 0.000E+000
node 74 0.000E+000 6.000E+003 0.000E+000
node 75 6.000E+003 0.000E+000 0.000E+000
node 76 6.000E+003 6.000E+003 0.000E+000
node 77 1.200E+004 0.000E+000 0.000E+000
node 78 1.200E+004 6.000E+003 0.000E+000
node 79 1.800E+004 0.000E+000 0.000E+000
node 80 1.800E+004 6.000E+003 0.000E+000
puts "rigidDiaphragm"
puts "mass"
puts "node"
fix 73 1 1 1 1 1 1;
fix 74 1 1 1 1 1 1;
fix 75 1 1 1 1 1 1;
fix 76 1 1 1 1 1 1;
fix 77 1 1 1 1 1 1;
fix 78 1 1 1 1 1 1;
fix 79 1 1 1 1 1 1;
fix 80 1 1 1 1 1 1;
puts "Equal DOF"
puts "material"
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Steel01 2 295 206000 0.05


uniaxialMaterial Elastic 201 6.729E+008
uniaxialMaterial Elastic 301 1.346E+009
uniaxialMaterial Elastic 401 9.892E+011
uniaxialMaterial Elastic 202 2.307E+008
uniaxialMaterial Elastic 302 1.346E+009
uniaxialMaterial Elastic 402 6.727E+011
uniaxialMaterial Elastic 203 6.895E+007
uniaxialMaterial Elastic 303 1.379E+008
uniaxialMaterial Elastic 403 3.309E+010
##DHC300X300X35X35 
section Fiber 1 -GJ 9.892E+011 {
fiber -1.200E+002 -1.325E+002 2.100E+003 1
fiber -6.000E+001 -1.325E+002 2.100E+003 1
fiber 0.000E+000 -1.325E+002 2.100E+003 1
fiber 6.000E+001 -1.325E+002 2.100E+003 1
fiber 1.200E+002 -1.325E+002 2.100E+003 1
fiber -1.200E+002 1.325E+002 2.100E+003 1
fiber -6.000E+001 1.325E+002 2.100E+003 1
fiber 0.000E+000 1.325E+002 2.100E+003 1
fiber 6.000E+001 1.325E+002 2.100E+003 1
fiber 1.200E+002 1.325E+002 2.100E+003 1
fiber 0.000E+000 -9.200E+001 1.610E+003 1
fiber 0.000E+000 -4.600E+001 1.610E+003 1
fiber 0.000E+000 0.000E+000 1.610E+003 1
fiber 0.000E+000 4.600E+001 1.610E+003 1
fiber 0.000E+000 9.200E+001 1.610E+003 1
}
##DHB300X300X35X12 
section Fiber 2 -GJ 6.727E+011 {
fiber -1.200E+002 -1.325E+002 2.100E+003 1
fiber -6.000E+001 -1.325E+002 2.100E+003 1
fiber 0.000E+000 -1.325E+002 2.100E+003 1
fiber 6.000E+001 -1.325E+002 2.100E+003 1
fiber 1.200E+002 -1.325E+002 2.100E+003 1
fiber -1.200E+002 1.325E+002 2.100E+003 1
fiber -6.000E+001 1.325E+002 2.100E+003 1
fiber 0.000E+000 1.325E+002 2.100E+003 1
fiber 6.000E+001 1.325E+002 2.100E+003 1
fiber 1.200E+002 1.325E+002 2.100E+003 1
fiber 0.000E+000 -9.200E+001 5.520E+002 1
fiber 0.000E+000 -4.600E+001 5.520E+002 1
fiber 0.000E+000 0.000E+000 5.520E+002 1
fiber 0.000E+000 4.600E+001 5.520E+002 1
fiber 0.000E+000 9.200E+001 5.520E+002 1
}
##DH400X400X20X20 
section Fiber 3 -GJ 3.309E+010 {
fiber -1.600E+002 -1.900E+002 1.600E+003 2
fiber -8.000E+001 -1.900E+002 1.600E+003 2
fiber 0.000E+000 -1.900E+002 1.600E+003 2
fiber 8.000E+001 -1.900E+002 1.600E+003 2
fiber 1.600E+002 -1.900E+002 1.600E+003 2
fiber -1.600E+002 1.900E+002 1.600E+003 2
fiber -8.000E+001 1.900E+002 1.600E+003 2
fiber 0.000E+000 1.900E+002 1.600E+003 2
fiber 8.000E+001 1.900E+002 1.600E+003 2
fiber 1.600E+002 1.900E+002 1.600E+003 2
fiber 0.000E+000 -1.440E+002 1.440E+003 2
fiber 0.000E+000 -7.200E+001 1.440E+003 2
fiber 0.000E+000 0.000E+000 1.440E+003 2
fiber 0.000E+000 7.200E+001 1.440E+003 2
fiber 0.000E+000 1.440E+002 1.440E+003 2
}
section Aggregator 1001 201 Vy 301 Vz 401 T -section 1
section Aggregator 1002 202 Vy 302 Vz 402 T -section 2
section Aggregator 1003 203 Vy 303 Vz 403 T -section 3

puts "transformation"
geomTransf Linear 1 1.000 0.000 0.000 
geomTransf Linear 2 1.000 0.000 0.000 
geomTransf Linear 3 1.000 0.000 0.000 
geomTransf Linear 4 1.000 0.000 0.000 
geomTransf Linear 5 1.000 0.000 0.000 
geomTransf Linear 6 1.000 0.000 0.000 
geomTransf Linear 7 1.000 0.000 0.000 
geomTransf Linear 8 1.000 0.000 0.000 
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
geomTransf Linear 19 -0.447 0.000 0.894 
geomTransf Linear 20 -0.447 0.000 0.894 
geomTransf Linear 21 -0.447 0.000 0.894 
geomTransf Linear 22 -0.447 0.000 0.894 
geomTransf Linear 23 -0.447 0.000 0.894 
geomTransf Linear 24 -0.447 0.000 0.894 
geomTransf Linear 25 -0.447 0.000 0.894 
geomTransf Linear 26 -0.447 0.000 0.894 
geomTransf Linear 27 -0.447 0.000 0.894 
geomTransf Linear 28 -0.447 0.000 0.894 
geomTransf Linear 29 -0.447 0.000 0.894 
geomTransf Linear 30 -0.447 0.000 0.894 
geomTransf Linear 31 1.000 0.000 0.000 
geomTransf Linear 32 1.000 0.000 0.000 
geomTransf Linear 33 1.000 0.000 0.000 
geomTransf Linear 34 1.000 0.000 0.000 
geomTransf Linear 35 1.000 0.000 0.000 
geomTransf Linear 36 1.000 0.000 0.000 
geomTransf Linear 37 1.000 0.000 0.000 
geomTransf Linear 38 1.000 0.000 0.000 
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
geomTransf Linear 49 -0.447 0.000 0.894 
geomTransf Linear 50 -0.447 0.000 0.894 
geomTransf Linear 51 -0.447 0.000 0.894 
geomTransf Linear 52 -0.447 0.000 0.894 
geomTransf Linear 53 -0.447 0.000 0.894 
geomTransf Linear 54 -0.447 0.000 0.894 
geomTransf Linear 55 -0.447 0.000 0.894 
geomTransf Linear 56 -0.447 0.000 0.894 
geomTransf Linear 57 -0.447 0.000 0.894 
geomTransf Linear 58 -0.447 0.000 0.894 
geomTransf Linear 59 -0.447 0.000 0.894 
geomTransf Linear 60 -0.447 0.000 0.894 
geomTransf Linear 61 1.000 0.000 0.000 
geomTransf Linear 62 1.000 0.000 0.000 
geomTransf Linear 63 1.000 0.000 0.000 
geomTransf Linear 64 1.000 0.000 0.000 
geomTransf Linear 65 1.000 0.000 0.000 
geomTransf Linear 66 1.000 0.000 0.000 
geomTransf Linear 67 1.000 0.000 0.000 
geomTransf Linear 68 1.000 0.000 0.000 
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
geomTransf Linear 79 -0.447 0.000 0.894 
geomTransf Linear 80 -0.447 0.000 0.894 
geomTransf Linear 81 -0.447 0.000 0.894 
geomTransf Linear 82 -0.447 0.000 0.894 
geomTransf Linear 83 -0.447 0.000 0.894 
geomTransf Linear 84 -0.447 0.000 0.894 
geomTransf Linear 85 -0.447 0.000 0.894 
geomTransf Linear 86 -0.447 0.000 0.894 
geomTransf Linear 87 -0.447 0.000 0.894 
geomTransf Linear 88 -0.447 0.000 0.894 
geomTransf Linear 89 -0.447 0.000 0.894 
geomTransf Linear 90 -0.447 0.000 0.894 
geomTransf Linear 91 1.000 0.000 0.000 
geomTransf Linear 92 1.000 0.000 0.000 
geomTransf Linear 93 1.000 0.000 0.000 
geomTransf Linear 94 1.000 0.000 0.000 
geomTransf Linear 95 1.000 0.000 0.000 
geomTransf Linear 96 1.000 0.000 0.000 
geomTransf Linear 97 1.000 0.000 0.000 
geomTransf Linear 98 1.000 0.000 0.000 
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
geomTransf Linear 109 -0.447 0.000 0.894 
geomTransf Linear 110 -0.447 0.000 0.894 
geomTransf Linear 111 -0.447 0.000 0.894 
geomTransf Linear 112 -0.447 0.000 0.894 
geomTransf Linear 113 -0.447 0.000 0.894 
geomTransf Linear 114 -0.447 0.000 0.894 
geomTransf Linear 115 -0.447 0.000 0.894 
geomTransf Linear 116 -0.447 0.000 0.894 
geomTransf Linear 117 -0.447 0.000 0.894 
geomTransf Linear 118 -0.447 0.000 0.894 
geomTransf Linear 119 -0.447 0.000 0.894 
geomTransf Linear 120 -0.447 0.000 0.894

puts "element"
element dispBeamColumn 1 1 2 3 1001 1
element dispBeamColumn 2 3 4 3 1001 2
element dispBeamColumn 3 5 6 3 1001 3
element dispBeamColumn 4 7 8 3 1001 4
element dispBeamColumn 5 9 10 3 1001 5
element dispBeamColumn 6 11 12 3 1001 6
element dispBeamColumn 7 13 14 3 1001 7
element dispBeamColumn 8 15 16 3 1001 8
element dispBeamColumn 9 2 4 3 1002 9
element dispBeamColumn 10 6 8 3 1002 10
element dispBeamColumn 11 10 12 3 1002 11
element dispBeamColumn 12 14 16 3 1002 12
element dispBeamColumn 13 2 6 3 1002 13
element dispBeamColumn 14 6 10 3 1002 14
element dispBeamColumn 15 10 14 3 1002 15
element dispBeamColumn 16 4 8 3 1002 16
element dispBeamColumn 17 8 12 3 1002 17
element dispBeamColumn 18 12 16 3 1002 18
element dispBeamColumn 19 5 17 3 1003 19
element dispBeamColumn 20 17 18 3 1003 20
element dispBeamColumn 21 18 19 3 1003 21
element dispBeamColumn 22 19 20 3 1003 22
element dispBeamColumn 23 20 21 3 1003 23
element dispBeamColumn 24 21 10 3 1003 24
element dispBeamColumn 25 7 22 3 1003 25
element dispBeamColumn 26 22 23 3 1003 26
element dispBeamColumn 27 23 24 3 1003 27
element dispBeamColumn 28 24 25 3 1003 28
element dispBeamColumn 29 25 26 3 1003 29
element dispBeamColumn 30 26 12 3 1003 30
element dispBeamColumn 31 37 1 3 1001 31
element dispBeamColumn 32 38 3 3 1001 32
element dispBeamColumn 33 39 5 3 1001 33
element dispBeamColumn 34 40 7 3 1001 34
element dispBeamColumn 35 41 9 3 1001 35
element dispBeamColumn 36 42 11 3 1001 36
element dispBeamColumn 37 43 13 3 1001 37
element dispBeamColumn 38 44 15 3 1001 38
element dispBeamColumn 39 1 3 3 1002 39
element dispBeamColumn 40 5 7 3 1002 40
element dispBeamColumn 41 9 11 3 1002 41
element dispBeamColumn 42 13 15 3 1002 42
element dispBeamColumn 43 1 5 3 1002 43
element dispBeamColumn 44 5 9 3 1002 44
element dispBeamColumn 45 9 13 3 1002 45
element dispBeamColumn 46 3 7 3 1002 46
element dispBeamColumn 47 7 11 3 1002 47
element dispBeamColumn 48 11 15 3 1002 48
element dispBeamColumn 49 39 27 3 1003 49
element dispBeamColumn 50 27 28 3 1003 50
element dispBeamColumn 51 28 29 3 1003 51
element dispBeamColumn 52 29 30 3 1003 52
element dispBeamColumn 53 30 31 3 1003 53
element dispBeamColumn 54 31 9 3 1003 54
element dispBeamColumn 55 40 32 3 1003 55
element dispBeamColumn 56 32 33 3 1003 56
element dispBeamColumn 57 33 34 3 1003 57
element dispBeamColumn 58 34 35 3 1003 58
element dispBeamColumn 59 35 36 3 1003 59
element dispBeamColumn 60 36 11 3 1003 60
element dispBeamColumn 61 55 37 3 1001 61
element dispBeamColumn 62 56 38 3 1001 62
element dispBeamColumn 63 57 39 3 1001 63
element dispBeamColumn 64 58 40 3 1001 64
element dispBeamColumn 65 59 41 3 1001 65
element dispBeamColumn 66 60 42 3 1001 66
element dispBeamColumn 67 61 43 3 1001 67
element dispBeamColumn 68 62 44 3 1001 68
element dispBeamColumn 69 37 38 3 1002 69
element dispBeamColumn 70 39 40 3 1002 70
element dispBeamColumn 71 41 42 3 1002 71
element dispBeamColumn 72 43 44 3 1002 72
element dispBeamColumn 73 37 39 3 1002 73
element dispBeamColumn 74 39 41 3 1002 74
element dispBeamColumn 75 41 43 3 1002 75
element dispBeamColumn 76 38 40 3 1002 76
element dispBeamColumn 77 40 42 3 1002 77
element dispBeamColumn 78 42 44 3 1002 78
element dispBeamColumn 79 57 45 3 1003 79
element dispBeamColumn 80 45 46 3 1003 80
element dispBeamColumn 81 46 47 3 1003 81
element dispBeamColumn 82 47 48 3 1003 82
element dispBeamColumn 83 48 49 3 1003 83
element dispBeamColumn 84 49 41 3 1003 84
element dispBeamColumn 85 58 50 3 1003 85
element dispBeamColumn 86 50 51 3 1003 86
element dispBeamColumn 87 51 52 3 1003 87
element dispBeamColumn 88 52 53 3 1003 88
element dispBeamColumn 89 53 54 3 1003 89
element dispBeamColumn 90 54 42 3 1003 90
element dispBeamColumn 91 73 55 3 1001 91
element dispBeamColumn 92 74 56 3 1001 92
element dispBeamColumn 93 75 57 3 1001 93
element dispBeamColumn 94 76 58 3 1001 94
element dispBeamColumn 95 77 59 3 1001 95
element dispBeamColumn 96 78 60 3 1001 96
element dispBeamColumn 97 79 61 3 1001 97
element dispBeamColumn 98 80 62 3 1001 98
element dispBeamColumn 99 55 56 3 1002 99
element dispBeamColumn 100 57 58 3 1002 100
element dispBeamColumn 101 59 60 3 1002 101
element dispBeamColumn 102 61 62 3 1002 102
element dispBeamColumn 103 55 57 3 1002 103
element dispBeamColumn 104 57 59 3 1002 104
element dispBeamColumn 105 59 61 3 1002 105
element dispBeamColumn 106 56 58 3 1002 106
element dispBeamColumn 107 58 60 3 1002 107
element dispBeamColumn 108 60 62 3 1002 108
element dispBeamColumn 109 75 63 3 1003 109
element dispBeamColumn 110 63 64 3 1003 110
element dispBeamColumn 111 64 65 3 1003 111
element dispBeamColumn 112 65 66 3 1003 112
element dispBeamColumn 113 66 67 3 1003 113
element dispBeamColumn 114 67 59 3 1003 114
element dispBeamColumn 115 76 68 3 1003 115
element dispBeamColumn 116 68 69 3 1003 116
element dispBeamColumn 117 69 70 3 1003 117
element dispBeamColumn 118 70 71 3 1003 118
element dispBeamColumn 119 71 72 3 1003 119
element dispBeamColumn 120 72 60 3 1003 120
puts "shell element"
puts "SOLID element"
puts "recorder"
puts "gravity"
## Load Case = DEAD
pattern Plain 1 Linear {
eleLoad -ele 9 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 10 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 11 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 12 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 13 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 14 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 15 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 16 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 17 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 18 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 39 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 40 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 41 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 42 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 43 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 44 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 45 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 46 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 47 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 48 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 69 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 70 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 71 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 72 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 73 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 74 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 75 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 76 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 77 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 78 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 99 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 100 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 101 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 102 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 103 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 104 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 105 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 106 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 107 -type -beamUniform 0 -1.200E+001 0
eleLoad -ele 108 -type -beamUniform 0 -1.200E+001 0
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator LoadControl 1.000E-001
analysis Static
analyze 10

loadConst -time 0.0

recorder Node -file node0.out -time -nodeRange 1 80 -dof 1 2 3 disp
recorder Node -file node2.out -time -node 2 -dof 1 2 3 disp

recorder Element -file ele79a.out -time -ele 79 localForce
recorder Element -file ele79b.out -time -ele 79 section 1 deformation


puts "pushover"
## Load Case = PUSH
pattern Plain 3 Linear {
load 2 4.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 4 4.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 1 3.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 3 3.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 37 2.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 38 2.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 55 1.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 56 1.000E+005 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator DisplacementControl 25 1 4
analysis Static
analyze 50

integrator DisplacementControl 25 1 -8
analyze 50
integrator DisplacementControl 25 1 12
analyze 50
integrator DisplacementControl 25 1 -16
analyze 50