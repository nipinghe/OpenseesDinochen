# 多层框架结构静力分析，知识点：
# （1） ETABS 自动风荷载计算介绍 
# （2） 弹性框架单元的定义及弹性截面参数的计算
# （3） 刚性隔板的定义方法及刚心节点的约束处理
# （4） 梁柱单元的局部坐标轴的定义方法与解释 
# （5） 了解拉格朗日处理约束方法与刚性隔板定义的关系 
# 一下程序成功运行
wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "node"
node 1 0.000E+000 0.000E+000 1.050E+004
node 2 0.000E+000 0.000E+000 1.350E+004
node 3 0.000E+000 5.000E+003 1.050E+004
node 4 0.000E+000 5.000E+003 1.350E+004
node 5 6.000E+003 0.000E+000 1.050E+004
node 6 6.000E+003 0.000E+000 1.350E+004
node 7 6.000E+003 5.000E+003 1.050E+004
node 8 6.000E+003 5.000E+003 1.350E+004
node 9 1.200E+004 0.000E+000 1.050E+004
node 10 1.200E+004 0.000E+000 1.350E+004
node 11 1.200E+004 5.000E+003 1.050E+004
node 12 1.200E+004 5.000E+003 1.350E+004
node 13 0.000E+000 0.000E+000 7.500E+003
node 14 0.000E+000 5.000E+003 7.500E+003
node 15 6.000E+003 0.000E+000 7.500E+003
node 16 6.000E+003 5.000E+003 7.500E+003
node 17 1.200E+004 0.000E+000 7.500E+003
node 18 1.200E+004 5.000E+003 7.500E+003
node 19 0.000E+000 0.000E+000 4.500E+003
node 20 0.000E+000 5.000E+003 4.500E+003
node 21 6.000E+003 0.000E+000 4.500E+003
node 22 6.000E+003 5.000E+003 4.500E+003
node 23 1.200E+004 0.000E+000 4.500E+003
node 24 1.200E+004 5.000E+003 4.500E+003
node 25 0.000E+000 0.000E+000 0.000E+000
node 26 0.000E+000 5.000E+003 0.000E+000
node 27 6.000E+003 0.000E+000 0.000E+000
node 28 6.000E+003 5.000E+003 0.000E+000
node 29 1.200E+004 0.000E+000 0.000E+000
node 30 1.200E+004 5.000E+003 0.000E+000
node 31 6.000E+003 2.500E+003 1.350E+004
node 32 6.000E+003 2.500E+003 1.050E+004
node 33 6.000E+003 2.500E+003 7.500E+003
node 34 6.000E+003 2.500E+003 4.500E+003
# 以下为楼板的刚心节点
node 35 6.000E+003 2.500E+003 1.350E+004
node 36 6.000E+003 2.500E+003 1.050E+004
node 37 6.000E+003 2.500E+003 7.500E+003
node 38 6.000E+003 2.500E+003 4.500E+003
puts "rigidDiaphragm"
# 命令流只有一个主节点与一个从节点，只是为了编程方便，用户可以定义一个主节点，多个从节点在一段命令流里面
# $perpDirn 表示刚性隔板的方法，如实例中楼板的刚性隔板的平移方向为 U1 （X 方向）与 U2（Y 方向），即 1-2 平面，该值应为 3。
# $masterNodeTag 为主结点， $slaveNodeTag1 为从结点。主结点一般为刚性隔板刚心
rigidDiaphragm 3 35 2
rigidDiaphragm 3 35 4
rigidDiaphragm 3 35 6
rigidDiaphragm 3 35 8
rigidDiaphragm 3 35 10
rigidDiaphragm 3 35 12
rigidDiaphragm 3 35 31
rigidDiaphragm 3 36 1
rigidDiaphragm 3 36 3
rigidDiaphragm 3 36 5
rigidDiaphragm 3 36 7
rigidDiaphragm 3 36 9
rigidDiaphragm 3 36 11
rigidDiaphragm 3 36 32
rigidDiaphragm 3 37 13
rigidDiaphragm 3 37 14
rigidDiaphragm 3 37 15
rigidDiaphragm 3 37 16
rigidDiaphragm 3 37 17
rigidDiaphragm 3 37 18
rigidDiaphragm 3 37 33
rigidDiaphragm 3 38 19
rigidDiaphragm 3 38 20
rigidDiaphragm 3 38 21
rigidDiaphragm 3 38 22
rigidDiaphragm 3 38 23
rigidDiaphragm 3 38 24
rigidDiaphragm 3 38 34
puts "restraint"
# 31-34为风荷载合力点的节点，只有 U1，U2，R3 三个自由度
fix 31 0 0 1 1 1 0
fix 32 0 0 1 1 1 0
fix 33 0 0 1 1 1 0
fix 34 0 0 1 1 1 0
# 35-38为刚性隔板的主节点，般只能平动与扭转，即只有 U1，U2，R3 三个自由度
# 那么其它自由度必须约束，即 U3、R1、R2
fix 35 0 0 1 1 1 0
fix 36 0 0 1 1 1 0
fix 37 0 0 1 1 1 0
fix 38 0 0 1 1 1 0
# 支座
fix 25 1 1 1 1 1 1
fix 26 1 1 1 1 1 1
fix 27 1 1 1 1 1 1
fix 28 1 1 1 1 1 1
fix 29 1 1 1 1 1 1
fix 30 1 1 1 1 1 1
puts "material"
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Elastic 2 3.250E+004
uniaxialMaterial Elastic 3 1.999E+005
puts "transformation"
# 梁柱单元与桁架单元另一不同之处，即需要输入局部坐标轴，即截面的主轴方向， 在实际的三维空间中指向的方向。
# 一个单元有自已特定的坐标轴向量，为了编程的方便
# 表示局部坐标轴的方向矢量值，矢量归一化后矢径为 1
geomTransf Linear 1  1.000 0.000 0.000 
geomTransf Linear 2  1.000 0.000 0.000 
geomTransf Linear 3  1.000 0.000 0.000 
geomTransf Linear 4  1.000 0.000 0.000 
geomTransf Linear 5  1.000 0.000 0.000 
geomTransf Linear 6  1.000 0.000 0.000 
geomTransf Linear 7  0.000 0.000 1.000 
geomTransf Linear 8  0.000 0.000 1.000 
geomTransf Linear 9  0.000 0.000 1.000 
geomTransf Linear 10 0.000 0.000 1.000 
geomTransf Linear 11 0.000 0.000 1.000 
geomTransf Linear 12 0.000 0.000 1.000 
geomTransf Linear 13 0.000 0.000 1.000 
geomTransf Linear 14 1.000 0.000 0.000 
geomTransf Linear 15 1.000 0.000 0.000 
geomTransf Linear 16 1.000 0.000 0.000 
geomTransf Linear 17 1.000 0.000 0.000 
geomTransf Linear 18 1.000 0.000 0.000 
geomTransf Linear 19 1.000 0.000 0.000 
geomTransf Linear 20 0.000 0.000 1.000 
geomTransf Linear 21 0.000 0.000 1.000 
geomTransf Linear 22 0.000 0.000 1.000 
geomTransf Linear 23 0.000 0.000 1.000 
geomTransf Linear 24 0.000 0.000 1.000 
geomTransf Linear 25 0.000 0.000 1.000 
geomTransf Linear 26 0.000 0.000 1.000 
geomTransf Linear 27 1.000 0.000 0.000 
geomTransf Linear 28 1.000 0.000 0.000 
geomTransf Linear 29 1.000 0.000 0.000 
geomTransf Linear 30 1.000 0.000 0.000 
geomTransf Linear 31 1.000 0.000 0.000 
geomTransf Linear 32 1.000 0.000 0.000 
geomTransf Linear 33 0.000 0.000 1.000 
geomTransf Linear 34 0.000 0.000 1.000 
geomTransf Linear 35 0.000 0.000 1.000 
geomTransf Linear 36 0.000 0.000 1.000 
geomTransf Linear 37 0.000 0.000 1.000 
geomTransf Linear 38 0.000 0.000 1.000 
geomTransf Linear 39 0.000 0.000 1.000 
geomTransf Linear 40 1.000 0.000 0.000 
geomTransf Linear 41 1.000 0.000 0.000 
geomTransf Linear 42 1.000 0.000 0.000 
geomTransf Linear 43 1.000 0.000 0.000 
geomTransf Linear 44 1.000 0.000 0.000 
geomTransf Linear 45 1.000 0.000 0.000 
geomTransf Linear 46 0.000 0.000 1.000 
geomTransf Linear 47 0.000 0.000 1.000 
geomTransf Linear 48 0.000 0.000 1.000 
geomTransf Linear 49 0.000 0.000 1.000 
geomTransf Linear 50 0.000 0.000 1.000 
geomTransf Linear 51 0.000 0.000 1.000 
geomTransf Linear 52 0.000 0.000 1.000 
puts "element"
# 弹性梁柱单元的命令流： element elasticBeamColumn $eleTag $iNode $jNode $A $E $G $J $Iy $Iz $transfTag 
# 单元没有考虑剪切变形，属于欧拉梁元。因为考虑剪切变形，需要提供主次轴的剪切面积，如矩形截面抗剪面积：Ax=(5/6)×A。
# EA 用于计算拉压刚度项，EIz 与 EIy 用于计算抗弯刚度项，JG 用于计算扭转项。$transfTag 为局部坐标轴
# ETABS 的截面定义提供相应的计算参数
element elasticBeamColumn 1 1 2 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 1
element elasticBeamColumn 2 3 4 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 2
element elasticBeamColumn 3 5 6 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 3
element elasticBeamColumn 4 7 8 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 4
element elasticBeamColumn 5 9 10 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 5
element elasticBeamColumn 6 11 12 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 6
element elasticBeamColumn 7 2 6 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 7
element elasticBeamColumn 8 6 10 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 8
element elasticBeamColumn 9 4 8 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 9
element elasticBeamColumn 10 8 12 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 10
element elasticBeamColumn 11 2 4 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 11
element elasticBeamColumn 12 6 8 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 12
element elasticBeamColumn 13 10 12 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 13
element elasticBeamColumn 14 13 1 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 14
element elasticBeamColumn 15 14 3 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 15
element elasticBeamColumn 16 15 5 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 16
element elasticBeamColumn 17 16 7 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 17
element elasticBeamColumn 18 17 9 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 18
element elasticBeamColumn 19 18 11 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 19
element elasticBeamColumn 20 1 5 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 20
element elasticBeamColumn 21 5 9 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 21
element elasticBeamColumn 22 3 7 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 22
element elasticBeamColumn 23 7 11 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 23
element elasticBeamColumn 24 1 3 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 24
element elasticBeamColumn 25 5 7 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 25
element elasticBeamColumn 26 9 11 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 26
element elasticBeamColumn 27 19 13 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 27
element elasticBeamColumn 28 20 14 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 28
element elasticBeamColumn 29 21 15 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 29
element elasticBeamColumn 30 22 16 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 30
element elasticBeamColumn 31 23 17 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 31
element elasticBeamColumn 32 24 18 1.600E+005 3.250E+004 1.354E+004 3.605E+009 2.133E+009 2.133E+009 32
element elasticBeamColumn 33 13 15 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 33
element elasticBeamColumn 34 15 17 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 34
element elasticBeamColumn 35 14 16 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 35
element elasticBeamColumn 36 16 18 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 36
element elasticBeamColumn 37 13 14 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 37
element elasticBeamColumn 38 15 16 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 38
element elasticBeamColumn 39 17 18 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 39
element elasticBeamColumn 40 25 19 3.600E+005 3.250E+004 1.354E+004 1.825E+010 1.080E+010 1.080E+010 40
element elasticBeamColumn 41 26 20 3.600E+005 3.250E+004 1.354E+004 1.825E+010 1.080E+010 1.080E+010 41
element elasticBeamColumn 42 27 21 3.600E+005 3.250E+004 1.354E+004 1.825E+010 1.080E+010 1.080E+010 42
element elasticBeamColumn 43 28 22 3.600E+005 3.250E+004 1.354E+004 1.825E+010 1.080E+010 1.080E+010 43
element elasticBeamColumn 44 29 23 3.600E+005 3.250E+004 1.354E+004 1.825E+010 1.080E+010 1.080E+010 44
element elasticBeamColumn 45 30 24 3.600E+005 3.250E+004 1.354E+004 1.825E+010 1.080E+010 1.080E+010 45
element elasticBeamColumn 46 19 21 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 46
element elasticBeamColumn 47 21 23 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 47
element elasticBeamColumn 48 20 22 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 48
element elasticBeamColumn 49 22 24 2.400E+005 3.250E+004 1.354E+004 7.512E+009 7.200E+009 3.200E+009 49
element elasticBeamColumn 50 19 20 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 50
element elasticBeamColumn 51 21 22 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 51
element elasticBeamColumn 52 23 24 1.200E+005 3.250E+004 1.354E+004 1.264E+009 3.600E+009 4.000E+008 52
puts "recorder"
recorder Node -file node0.out -time -nodeRange 1 38 -dof 1 2 3 disp
recorder Element -file ele0.out -time -eleRange 1 52 localForce
# 需要计算结构层间变形，需要提取楼层位移，那么增加以下命令流，可记录楼层刚心（节点 35~38）的位移
recorder Node -file story_disp.out -time -nodeRange 35 38 -dof 2 disp
puts "loading"
## Load Case = WINDY
# 风荷载采用 ETABS 自动计算的风荷载
pattern Plain 3 Linear {
load 31 1.197E-012 1.955E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 32 2.237E-012 3.653E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 33 1.991E-012 3.252E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 34 2.107E-012 3.442E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
}
puts "analysis"
# 由于采用了刚性隔板假定，因此需要改动约束边界处理的设置，即 constraints 的设置，需要改为拉格朗日法处理约束边界处理
constraints Lagrange
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator LoadControl 1.000E-002
analysis Static
analyze 100
