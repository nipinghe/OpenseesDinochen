wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
node 1 4.500E+003 5.000E+003 1.050E+004
node 2 4.500E+003 5.000E+003 1.350E+004
node 3 4.500E+003 0.000E+000 1.050E+004
node 4 4.500E+003 0.000E+000 1.350E+004
node 5 0.000E+000 0.000E+000 1.050E+004
node 6 0.000E+000 0.000E+000 1.350E+004
node 7 0.000E+000 5.000E+003 1.050E+004
node 8 0.000E+000 5.000E+003 1.350E+004
node 9 4.500E+003 0.000E+000 7.500E+003
node 10 4.500E+003 5.000E+003 7.500E+003
node 11 0.000E+000 0.000E+000 7.500E+003
node 12 0.000E+000 5.000E+003 7.500E+003
node 13 9.000E+003 0.000E+000 7.500E+003
node 14 9.000E+003 0.000E+000 1.050E+004
node 15 9.000E+003 5.000E+003 7.500E+003
node 16 9.000E+003 5.000E+003 1.050E+004
node 17 4.500E+003 0.000E+000 4.500E+003
node 18 4.500E+003 5.000E+003 4.500E+003
node 19 0.000E+000 0.000E+000 4.500E+003
node 20 0.000E+000 5.000E+003 4.500E+003
node 21 9.000E+003 0.000E+000 4.500E+003
node 22 9.000E+003 5.000E+003 4.500E+003
node 23 4.500E+003 0.000E+000 0.000E+000
node 24 4.500E+003 5.000E+003 0.000E+000
node 25 0.000E+000 0.000E+000 0.000E+000
node 26 0.000E+000 5.000E+003 0.000E+000
node 27 9.000E+003 0.000E+000 0.000E+000
node 28 9.000E+003 5.000E+003 0.000E+000
puts "rigidDiaphragm"
puts "node"
fix 23 1 1 1 1 1 1;
fix 24 1 1 1 1 1 1;
fix 25 1 1 1 1 1 1;
fix 26 1 1 1 1 1 1;
fix 27 1 1 1 1 1 1;
fix 28 1 1 1 1 1 1;
puts "material"
uniaxialMaterial Steel01 1 335 200000 0.00001 
uniaxialMaterial Concrete01 2 -26.8 -0.002 -10 -0.0033
uniaxialMaterial Elastic 3 1.999E+005
uniaxialMaterial Elastic 201 1.489E+009
uniaxialMaterial Elastic 301 1.489E+009
uniaxialMaterial Elastic 401 4.026E+013
uniaxialMaterial Elastic 202 2.233E+009
uniaxialMaterial Elastic 302 2.233E+009
uniaxialMaterial Elastic 402 8.389E+013
uniaxialMaterial Elastic 203 1.675E+009
uniaxialMaterial Elastic 303 1.675E+009
uniaxialMaterial Elastic 403 4.140E+013
uniaxialMaterial Elastic 204 1.396E+009
uniaxialMaterial Elastic 304 1.396E+009
uniaxialMaterial Elastic 404 3.146E+013
##NC400X400 
section Fiber 1 {
fiber -1.667E+002 -1.667E+002 4.444E+003 2
fiber -1.000E+002 -1.667E+002 4.444E+003 2
fiber -3.333E+001 -1.667E+002 4.444E+003 2
fiber 3.333E+001 -1.667E+002 4.444E+003 2
fiber 1.000E+002 -1.667E+002 4.444E+003 2
fiber 1.667E+002 -1.667E+002 4.444E+003 2
fiber -1.667E+002 -1.000E+002 4.444E+003 2
fiber -1.000E+002 -1.000E+002 4.444E+003 2
fiber -3.333E+001 -1.000E+002 4.444E+003 2
fiber 3.333E+001 -1.000E+002 4.444E+003 2
fiber 1.000E+002 -1.000E+002 4.444E+003 2
fiber 1.667E+002 -1.000E+002 4.444E+003 2
fiber -1.667E+002 -3.333E+001 4.444E+003 2
fiber -1.000E+002 -3.333E+001 4.444E+003 2
fiber -3.333E+001 -3.333E+001 4.444E+003 2
fiber 3.333E+001 -3.333E+001 4.444E+003 2
fiber 1.000E+002 -3.333E+001 4.444E+003 2
fiber 1.667E+002 -3.333E+001 4.444E+003 2
fiber -1.667E+002 3.333E+001 4.444E+003 2
fiber -1.000E+002 3.333E+001 4.444E+003 2
fiber -3.333E+001 3.333E+001 4.444E+003 2
fiber 3.333E+001 3.333E+001 4.444E+003 2
fiber 1.000E+002 3.333E+001 4.444E+003 2
fiber 1.667E+002 3.333E+001 4.444E+003 2
fiber -1.667E+002 1.000E+002 4.444E+003 2
fiber -1.000E+002 1.000E+002 4.444E+003 2
fiber -3.333E+001 1.000E+002 4.444E+003 2
fiber 3.333E+001 1.000E+002 4.444E+003 2
fiber 1.000E+002 1.000E+002 4.444E+003 2
fiber 1.667E+002 1.000E+002 4.444E+003 2
fiber -1.667E+002 1.667E+002 4.444E+003 2
fiber -1.000E+002 1.667E+002 4.444E+003 2
fiber -3.333E+001 1.667E+002 4.444E+003 2
fiber 3.333E+001 1.667E+002 4.444E+003 2
fiber 1.000E+002 1.667E+002 4.444E+003 2
fiber 1.667E+002 1.667E+002 4.444E+003 2
fiber -1.650E+002 -1.650E+002 4.900E+002 1
fiber 0.000E+000 -1.650E+002 4.900E+002 1
fiber 1.650E+002 -1.650E+002 4.900E+002 1
fiber -1.650E+002 1.650E+002 4.900E+002 1
fiber 0.000E+000 1.650E+002 4.900E+002 1
fiber 1.650E+002 1.650E+002 4.900E+002 1
fiber -1.650E+002 0.000E+000 4.900E+002 1
fiber 1.650E+002 0.000E+000 4.900E+002 1
}
##NC400X600 
section Fiber 2 {
fiber -1.667E+002 -2.500E+002 6.667E+003 2
fiber -1.000E+002 -2.500E+002 6.667E+003 2
fiber -3.333E+001 -2.500E+002 6.667E+003 2
fiber 3.333E+001 -2.500E+002 6.667E+003 2
fiber 1.000E+002 -2.500E+002 6.667E+003 2
fiber 1.667E+002 -2.500E+002 6.667E+003 2
fiber -1.667E+002 -1.500E+002 6.667E+003 2
fiber -1.000E+002 -1.500E+002 6.667E+003 2
fiber -3.333E+001 -1.500E+002 6.667E+003 2
fiber 3.333E+001 -1.500E+002 6.667E+003 2
fiber 1.000E+002 -1.500E+002 6.667E+003 2
fiber 1.667E+002 -1.500E+002 6.667E+003 2
fiber -1.667E+002 -5.000E+001 6.667E+003 2
fiber -1.000E+002 -5.000E+001 6.667E+003 2
fiber -3.333E+001 -5.000E+001 6.667E+003 2
fiber 3.333E+001 -5.000E+001 6.667E+003 2
fiber 1.000E+002 -5.000E+001 6.667E+003 2
fiber 1.667E+002 -5.000E+001 6.667E+003 2
fiber -1.667E+002 5.000E+001 6.667E+003 2
fiber -1.000E+002 5.000E+001 6.667E+003 2
fiber -3.333E+001 5.000E+001 6.667E+003 2
fiber 3.333E+001 5.000E+001 6.667E+003 2
fiber 1.000E+002 5.000E+001 6.667E+003 2
fiber 1.667E+002 5.000E+001 6.667E+003 2
fiber -1.667E+002 1.500E+002 6.667E+003 2
fiber -1.000E+002 1.500E+002 6.667E+003 2
fiber -3.333E+001 1.500E+002 6.667E+003 2
fiber 3.333E+001 1.500E+002 6.667E+003 2
fiber 1.000E+002 1.500E+002 6.667E+003 2
fiber 1.667E+002 1.500E+002 6.667E+003 2
fiber -1.667E+002 2.500E+002 6.667E+003 2
fiber -1.000E+002 2.500E+002 6.667E+003 2
fiber -3.333E+001 2.500E+002 6.667E+003 2
fiber 3.333E+001 2.500E+002 6.667E+003 2
fiber 1.000E+002 2.500E+002 6.667E+003 2
fiber 1.667E+002 2.500E+002 6.667E+003 2
fiber -1.650E+002 -2.650E+002 4.900E+002 1
fiber 0.000E+000 -2.650E+002 4.900E+002 1
fiber 1.650E+002 -2.650E+002 4.900E+002 1
fiber -1.650E+002 2.650E+002 4.900E+002 1
fiber 0.000E+000 2.650E+002 4.900E+002 1
fiber 1.650E+002 2.650E+002 4.900E+002 1
fiber -1.650E+002 -8.833E+001 4.900E+002 1
fiber -1.650E+002 8.833E+001 4.900E+002 1
fiber 1.650E+002 -8.833E+001 4.900E+002 1
fiber 1.650E+002 8.833E+001 4.900E+002 1
}
##NB300X600 
section Fiber 3 {
fiber -1.125E+002 -2.700E+002 4.500E+003 2
fiber -3.750E+001 -2.700E+002 4.500E+003 2
fiber 3.750E+001 -2.700E+002 4.500E+003 2
fiber 1.125E+002 -2.700E+002 4.500E+003 2
fiber -1.125E+002 -2.100E+002 4.500E+003 2
fiber -3.750E+001 -2.100E+002 4.500E+003 2
fiber 3.750E+001 -2.100E+002 4.500E+003 2
fiber 1.125E+002 -2.100E+002 4.500E+003 2
fiber -1.125E+002 -1.500E+002 4.500E+003 2
fiber -3.750E+001 -1.500E+002 4.500E+003 2
fiber 3.750E+001 -1.500E+002 4.500E+003 2
fiber 1.125E+002 -1.500E+002 4.500E+003 2
fiber -1.125E+002 -9.000E+001 4.500E+003 2
fiber -3.750E+001 -9.000E+001 4.500E+003 2
fiber 3.750E+001 -9.000E+001 4.500E+003 2
fiber 1.125E+002 -9.000E+001 4.500E+003 2
fiber -1.125E+002 -3.000E+001 4.500E+003 2
fiber -3.750E+001 -3.000E+001 4.500E+003 2
fiber 3.750E+001 -3.000E+001 4.500E+003 2
fiber 1.125E+002 -3.000E+001 4.500E+003 2
fiber -1.125E+002 3.000E+001 4.500E+003 2
fiber -3.750E+001 3.000E+001 4.500E+003 2
fiber 3.750E+001 3.000E+001 4.500E+003 2
fiber 1.125E+002 3.000E+001 4.500E+003 2
fiber -1.125E+002 9.000E+001 4.500E+003 2
fiber -3.750E+001 9.000E+001 4.500E+003 2
fiber 3.750E+001 9.000E+001 4.500E+003 2
fiber 1.125E+002 9.000E+001 4.500E+003 2
fiber -1.125E+002 1.500E+002 4.500E+003 2
fiber -3.750E+001 1.500E+002 4.500E+003 2
fiber 3.750E+001 1.500E+002 4.500E+003 2
fiber 1.125E+002 1.500E+002 4.500E+003 2
fiber -1.125E+002 2.100E+002 4.500E+003 2
fiber -3.750E+001 2.100E+002 4.500E+003 2
fiber 3.750E+001 2.100E+002 4.500E+003 2
fiber 1.125E+002 2.100E+002 4.500E+003 2
fiber -1.125E+002 2.700E+002 4.500E+003 2
fiber -3.750E+001 2.700E+002 4.500E+003 2
fiber 3.750E+001 2.700E+002 4.500E+003 2
fiber 1.125E+002 2.700E+002 4.500E+003 2
fiber -1.150E+002 2.650E+002 4.900E+002 1
fiber 0.000E+000 2.650E+002 4.900E+002 1
fiber 1.150E+002 2.650E+002 4.900E+002 1
fiber -1.150E+002 -2.650E+002 4.900E+002 1
fiber -3.833E+001 -2.650E+002 4.900E+002 1
fiber 3.833E+001 -2.650E+002 4.900E+002 1
fiber 1.150E+002 -2.650E+002 4.900E+002 1
}
##NB300X500 
section Fiber 4 {
fiber -1.125E+002 -2.250E+002 3.750E+003 2
fiber -3.750E+001 -2.250E+002 3.750E+003 2
fiber 3.750E+001 -2.250E+002 3.750E+003 2
fiber 1.125E+002 -2.250E+002 3.750E+003 2
fiber -1.125E+002 -1.750E+002 3.750E+003 2
fiber -3.750E+001 -1.750E+002 3.750E+003 2
fiber 3.750E+001 -1.750E+002 3.750E+003 2
fiber 1.125E+002 -1.750E+002 3.750E+003 2
fiber -1.125E+002 -1.250E+002 3.750E+003 2
fiber -3.750E+001 -1.250E+002 3.750E+003 2
fiber 3.750E+001 -1.250E+002 3.750E+003 2
fiber 1.125E+002 -1.250E+002 3.750E+003 2
fiber -1.125E+002 -7.500E+001 3.750E+003 2
fiber -3.750E+001 -7.500E+001 3.750E+003 2
fiber 3.750E+001 -7.500E+001 3.750E+003 2
fiber 1.125E+002 -7.500E+001 3.750E+003 2
fiber -1.125E+002 -2.500E+001 3.750E+003 2
fiber -3.750E+001 -2.500E+001 3.750E+003 2
fiber 3.750E+001 -2.500E+001 3.750E+003 2
fiber 1.125E+002 -2.500E+001 3.750E+003 2
fiber -1.125E+002 2.500E+001 3.750E+003 2
fiber -3.750E+001 2.500E+001 3.750E+003 2
fiber 3.750E+001 2.500E+001 3.750E+003 2
fiber 1.125E+002 2.500E+001 3.750E+003 2
fiber -1.125E+002 7.500E+001 3.750E+003 2
fiber -3.750E+001 7.500E+001 3.750E+003 2
fiber 3.750E+001 7.500E+001 3.750E+003 2
fiber 1.125E+002 7.500E+001 3.750E+003 2
fiber -1.125E+002 1.250E+002 3.750E+003 2
fiber -3.750E+001 1.250E+002 3.750E+003 2
fiber 3.750E+001 1.250E+002 3.750E+003 2
fiber 1.125E+002 1.250E+002 3.750E+003 2
fiber -1.125E+002 1.750E+002 3.750E+003 2
fiber -3.750E+001 1.750E+002 3.750E+003 2
fiber 3.750E+001 1.750E+002 3.750E+003 2
fiber 1.125E+002 1.750E+002 3.750E+003 2
fiber -1.125E+002 2.250E+002 3.750E+003 2
fiber -3.750E+001 2.250E+002 3.750E+003 2
fiber 3.750E+001 2.250E+002 3.750E+003 2
fiber 1.125E+002 2.250E+002 3.750E+003 2
fiber -1.150E+002 2.150E+002 4.900E+002 1
fiber 1.150E+002 2.150E+002 4.900E+002 1
fiber -1.150E+002 -2.150E+002 4.900E+002 1
fiber 0.000E+000 -2.150E+002 4.900E+002 1
fiber 1.150E+002 -2.150E+002 4.900E+002 1
}
section Aggregator 1001 201 Vy 301 Vz 401 T -section 1
section Aggregator 1002 202 Vy 302 Vz 402 T -section 2
section Aggregator 1003 203 Vy 303 Vz 403 T -section 3
section Aggregator 1004 204 Vy 304 Vz 404 T -section 4
puts "transformation"
geomTransf PDelta 1 1.000 0.000 0.000 
geomTransf PDelta 2 1.000 0.000 0.000 
geomTransf PDelta 3 1.000 0.000 0.000 
geomTransf PDelta 4 1.000 0.000 0.000 
geomTransf Linear 5 0.000 0.000 1.000 
geomTransf Linear 6 0.000 0.000 1.000 
geomTransf Linear 7 0.000 0.000 1.000 
geomTransf Linear 8 0.000 0.000 1.000 
geomTransf PDelta 9 1.000 0.000 0.000 
geomTransf PDelta 10 1.000 0.000 0.000 
geomTransf PDelta 11 1.000 0.000 0.000 
geomTransf PDelta 12 1.000 0.000 0.000 
geomTransf PDelta 13 1.000 0.000 0.000 
geomTransf PDelta 14 1.000 0.000 0.000 
geomTransf Linear 15 0.000 0.000 1.000 
geomTransf Linear 16 0.000 0.000 1.000 
geomTransf Linear 17 0.000 0.000 1.000 
geomTransf Linear 18 0.000 0.000 1.000 
geomTransf Linear 19 0.000 0.000 1.000 
geomTransf Linear 20 0.000 0.000 1.000 
geomTransf Linear 21 0.000 0.000 1.000 
geomTransf PDelta 22 1.000 0.000 0.000 
geomTransf PDelta 23 1.000 0.000 0.000 
geomTransf PDelta 24 1.000 0.000 0.000 
geomTransf PDelta 25 1.000 0.000 0.000 
geomTransf PDelta 26 1.000 0.000 0.000 
geomTransf PDelta 27 1.000 0.000 0.000 
geomTransf Linear 28 0.000 0.000 1.000 
geomTransf Linear 29 0.000 0.000 1.000 
geomTransf Linear 30 0.000 0.000 1.000 
geomTransf Linear 31 0.000 0.000 1.000 
geomTransf Linear 32 0.000 0.000 1.000 
geomTransf Linear 33 0.000 0.000 1.000 
geomTransf Linear 34 0.000 0.000 1.000 
geomTransf PDelta 35 1.000 0.000 0.000 
geomTransf PDelta 36 1.000 0.000 0.000 
geomTransf PDelta 37 1.000 0.000 0.000 
geomTransf PDelta 38 1.000 0.000 0.000 
geomTransf PDelta 39 1.000 0.000 0.000 
geomTransf PDelta 40 1.000 0.000 0.000 
geomTransf Linear 41 0.000 0.000 1.000 
geomTransf Linear 42 0.000 0.000 1.000 
geomTransf Linear 43 0.000 0.000 1.000 
geomTransf Linear 44 0.000 0.000 1.000 
geomTransf Linear 45 0.000 0.000 1.000 
geomTransf Linear 46 0.000 0.000 1.000 
geomTransf Linear 47 0.000 0.000 1.000 
puts "element"
element nonlinearBeamColumn 1 1 2 4 1001 1
element nonlinearBeamColumn 2 3 4 4 1001 2
element nonlinearBeamColumn 3 5 6 4 1001 3
element nonlinearBeamColumn 4 7 8 4 1001 4
element nonlinearBeamColumn 5 6 8 4 1003 5
element nonlinearBeamColumn 6 4 2 4 1003 6
element nonlinearBeamColumn 7 8 2 4 1004 7
element nonlinearBeamColumn 8 6 4 4 1004 8
element nonlinearBeamColumn 9 9 3 4 1001 9
element nonlinearBeamColumn 10 10 1 4 1001 10
element nonlinearBeamColumn 11 11 5 4 1002 11
element nonlinearBeamColumn 12 12 7 4 1002 12
element nonlinearBeamColumn 13 13 14 4 1002 13
element nonlinearBeamColumn 14 15 16 4 1002 14
element nonlinearBeamColumn 15 7 1 4 1004 15
element nonlinearBeamColumn 16 1 16 4 1004 16
element nonlinearBeamColumn 17 3 14 4 1004 17
element nonlinearBeamColumn 18 5 3 4 1004 18
element nonlinearBeamColumn 19 3 1 4 1003 19
element nonlinearBeamColumn 20 14 16 4 1003 20
element nonlinearBeamColumn 21 5 7 4 1003 21
element nonlinearBeamColumn 22 17 9 4 1001 22
element nonlinearBeamColumn 23 18 10 4 1001 23
element nonlinearBeamColumn 24 19 11 4 1002 24
element nonlinearBeamColumn 25 20 12 4 1002 25
element nonlinearBeamColumn 26 21 13 4 1002 26
element nonlinearBeamColumn 27 22 15 4 1002 27
element nonlinearBeamColumn 28 12 10 4 1004 28
element nonlinearBeamColumn 29 10 15 4 1004 29
element nonlinearBeamColumn 30 9 13 4 1004 30
element nonlinearBeamColumn 31 11 9 4 1004 31
element nonlinearBeamColumn 32 9 10 4 1003 32
element nonlinearBeamColumn 33 13 15 4 1003 33
element nonlinearBeamColumn 34 11 12 4 1003 34
element nonlinearBeamColumn 35 23 17 4 1001 35
element nonlinearBeamColumn 36 24 18 4 1001 36
element nonlinearBeamColumn 37 25 19 4 1002 37
element nonlinearBeamColumn 38 26 20 4 1002 38
element nonlinearBeamColumn 39 27 21 4 1002 39
element nonlinearBeamColumn 40 28 22 4 1002 40
element nonlinearBeamColumn 41 20 18 4 1004 41
element nonlinearBeamColumn 42 18 22 4 1004 42
element nonlinearBeamColumn 43 17 21 4 1004 43
element nonlinearBeamColumn 44 19 17 4 1004 44
element nonlinearBeamColumn 45 17 18 4 1003 45
element nonlinearBeamColumn 46 21 22 4 1003 46
element nonlinearBeamColumn 47 19 20 4 1003 47
puts "recorder"
recorder Element -file ele0.out -time -eleRange 1 47 localForce
recorder Node -file node0.out -time -nodeRange 1 28 -dof 1 2 3 disp
recorder Node -file node8.out -time -node 8 -dof 1 2 3 disp
recorder Node -file node7.out -time -node 7 -dof 1 2 3 disp
recorder Node -file node12.out -time -node 12 -dof 1 2 3 disp
recorder Node -file node20.out -time -node 20 -dof 1 2 3 disp
recorder Element -file ele0_sec1d.out -time -eleRange 1 47 section 1 deformation
recorder Element -file ele0_sec3d.out -time -eleRange 1 47 section 4 deformation
puts "gravity"
## Load Case = DEAD
pattern Plain 1 Linear {
eleLoad -ele 5 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 5 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 5 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 8 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 8 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 6 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 6 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 6 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 7 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 7 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 15 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 15 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 21 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 21 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 21 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 18 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 18 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 19 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 19 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 19 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 16 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 16 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 19 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 19 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 19 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 17 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 17 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 20 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 20 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 20 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 28 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 28 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 34 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 34 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 34 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 31 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 31 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 32 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 32 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 32 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 29 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 29 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 32 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 32 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 32 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 30 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 30 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 33 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 33 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 33 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 41 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 41 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 47 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 47 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 47 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 44 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 44 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 45 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 45 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 45 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 42 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 42 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 45 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 45 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 45 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 43 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 43 -type -beamUniform 0 -4.219E+000 0
eleLoad -ele 46 -type -beamUniform 0 -3.797E+000 0
eleLoad -ele 46 -type -beamUniform 0 -1.688E+000 0
eleLoad -ele 46 -type -beamUniform 0 -3.797E+000 0
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator LoadControl 0.1
analysis Static
analyze 10
loadConst 0.0
puts "pushover"
## Load Case = PUSH
pattern Plain 2 Linear {
load 6 1.350E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 8 1.350E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 5 1.050E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 7 1.050E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 11 7.500E+003 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 12 7.500E+003 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 19 4.500E+003 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 20 4.500E+003 0.000E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-3 1000
algorithm Newton
integrator DisplacementControl 8 1 3
analysis Static
analyze 100
