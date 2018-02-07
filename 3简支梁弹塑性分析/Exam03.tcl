# （1） ETABS 施加均布荷载选择局部坐标轴输入； 
# （2） 非线性梁柱单元（基于柔度法的纤维单元）的 OPENSEES 命令流；
# （3） 非线性材料 Steel01 与 Concrete01 的 OPENSEES 命令流；
# （4） OPENSEES 记录纤维单元截面变形的定义； 
# （5） OPENSEES 均布荷载的定义方法； 
# （6） 位移控制加载分析方法的 OPENSEES 命令流；
# （7） 查看结构弹塑性分析结果（力-位移曲线）及截面变形查看

# 程序运行失败
wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
node 1 0.000E+000 0.000E+000 0.000E+000
node 2 3.000E+003 0.000E+000 0.000E+000
node 3 5.000E+002 0.000E+000 0.000E+000
node 4 1.000E+003 0.000E+000 0.000E+000
node 5 1.500E+003 0.000E+000 0.000E+000
node 6 2.000E+003 0.000E+000 0.000E+000
node 7 2.500E+003 0.000E+000 0.000E+000
puts "node"
# 支座
fix 1 1 1 1 1 0 1;
fix 2 0 1 1 1 0 1;
# 分析平面为 X-Z 平面，即对普通结点需要约束 UY，RX，RZ 三个自由度
# 我认为不用约束面外也可以
fix 3 0 1 0 1 0 1;
fix 4 0 1 0 1 0 1;
fix 5 0 1 0 1 0 1;
fix 6 0 1 0 1 0 1;
fix 7 0 1 0 1 0 1;
puts "material"
# 钢筋的屈服强度为 335MPa，弹性模量为 200000MPa，硬化系数为 0.00001，即屈服平台基本上为水平段。
uniaxialMaterial Steel01 1 335 200000 0.00001 
# 混凝土本构 Concrete01 是最简单的混凝土本构，注意数值是负数，即表示受压段。该本构没有受拉段，即受拉强度为 0，表示结构一分析即进入弹塑性。 
uniaxialMaterial Concrete01 2 -26.8 -0.002 -10 -0.0033
##NB300X600 
# 纤维的坐标与材料切线模量可以组装成截面的刚度，而纤维的坐标与材料的应力可以组装成截面的内力（抗力），那么每个纤维的应变可以通过截面的变形与坐标求出。
# 截面变形求解应变是基于平截面假定的。 
section Fiber 1 {
	# fiber $Y  $Z  $Area  $Mat
fiber -1.250E+002 -2.500E+002 5.000E+003 2
fiber -7.500E+001 -2.500E+002 5.000E+003 2
fiber -2.500E+001 -2.500E+002 5.000E+003 2
fiber 2.500E+001 -2.500E+002 5.000E+003 2
fiber 7.500E+001 -2.500E+002 5.000E+003 2
fiber 1.250E+002 -2.500E+002 5.000E+003 2
fiber -1.250E+002 -1.500E+002 5.000E+003 2
fiber -7.500E+001 -1.500E+002 5.000E+003 2
fiber -2.500E+001 -1.500E+002 5.000E+003 2
fiber 2.500E+001 -1.500E+002 5.000E+003 2
fiber 7.500E+001 -1.500E+002 5.000E+003 2
fiber 1.250E+002 -1.500E+002 5.000E+003 2
fiber -1.250E+002 -5.000E+001 5.000E+003 2
fiber -7.500E+001 -5.000E+001 5.000E+003 2
fiber -2.500E+001 -5.000E+001 5.000E+003 2
fiber 2.500E+001 -5.000E+001 5.000E+003 2
fiber 7.500E+001 -5.000E+001 5.000E+003 2
fiber 1.250E+002 -5.000E+001 5.000E+003 2
fiber -1.250E+002 5.000E+001 5.000E+003 2
fiber -7.500E+001 5.000E+001 5.000E+003 2
fiber -2.500E+001 5.000E+001 5.000E+003 2
fiber 2.500E+001 5.000E+001 5.000E+003 2
fiber 7.500E+001 5.000E+001 5.000E+003 2
fiber 1.250E+002 5.000E+001 5.000E+003 2
fiber -1.250E+002 1.500E+002 5.000E+003 2
fiber -7.500E+001 1.500E+002 5.000E+003 2
fiber -2.500E+001 1.500E+002 5.000E+003 2
fiber 2.500E+001 1.500E+002 5.000E+003 2
fiber 7.500E+001 1.500E+002 5.000E+003 2
fiber 1.250E+002 1.500E+002 5.000E+003 2
fiber -1.250E+002 2.500E+002 5.000E+003 2
fiber -7.500E+001 2.500E+002 5.000E+003 2
fiber -2.500E+001 2.500E+002 5.000E+003 2
fiber 2.500E+001 2.500E+002 5.000E+003 2
fiber 7.500E+001 2.500E+002 5.000E+003 2
fiber 1.250E+002 2.500E+002 5.000E+003 2
fiber -1.150E+002 2.650E+002 3.900E+002 1
fiber 1.150E+002 2.650E+002 3.900E+002 1
fiber -1.150E+002 -2.650E+002 4.900E+002 1
fiber 0.000E+000 -2.650E+002 4.900E+002 1
fiber 1.150E+002 -2.650E+002 4.900E+002 1
}
puts "transformation"
geomTransf Linear 1 0.000 0.000 1.000 
geomTransf Linear 2 0.000 0.000 1.000 
geomTransf Linear 3 0.000 0.000 1.000 
geomTransf Linear 4 0.000 0.000 1.000 
geomTransf Linear 5 0.000 0.000 1.000 
geomTransf Linear 6 0.000 0.000 1.000 
puts "element"
# 非线性梁柱单元，即基于柔度法的纤维单元
# element nonlinearBeamColumn $eleTag $iNode $jNode $numIntgrPts $secTag $transfTag
# $numIntgrPts 为积分点数量；$secTag 为纤维截面编号，$transfTag 为局部坐标轴编号

# 积分点数量，也就纤维单元的计算截面数量，纤维单元的刚度与抗力是由截面刚度与抗力沿杆件长度积分所得
# 显然，不能将全部截面积分，只能采用离散积分， OPENSEES 默认的积分方法是高斯-洛贝塔积分（Guass-Lobotto）
# OPENSEES 后期版本可提供其它积分方法：Legendre, Radau, NewtonCotes, Trapezoidal
element nonlinearBeamColumn 1 1 3 3 1 1
element nonlinearBeamColumn 2 3 4 3 1 2
element nonlinearBeamColumn 3 4 5 3 1 3
element nonlinearBeamColumn 4 5 6 3 1 4
element nonlinearBeamColumn 5 6 7 3 1 5
element nonlinearBeamColumn 6 7 2 3 1 6
puts "recorder"
recorder Node -file node0.out -time -nodeRange 1 7 -dof 1 2 3 disp
# 记录跨中 5 号结点的位移，保存于 node5.out 文件中
# 基于位移加载的控制加载分析中，记录的结果文件中，-time 不是表示时间， 也不是表示荷载步，而是表示达到每一步加载变形的荷载模式的倍数。
# 荷载模式乘 以荷载倍数等于求出的达到每一步变形的外荷载。 
recorder Node -file node5.out -time -node 5 -dof 1 2 3 disp
recorder Element -file ele0.out -time -eleRange 1 6 localForce
# 本实例采用纤维单元，即可输出每段积分点处截面的变形，记录截 面变形的命令如下： 
# recorder Element -file $File -time -eleRange 1 6 section $SecPos deformation 
# $SecPos 为输出积分点号
# deformation 表示记录内容为截面变形。截面变形输出结果中，输出三个数值分别是轴向应变，绕 Z 轴弯曲曲率，绕 Y 轴弯曲曲率。 
recorder Element -file ele0_sec1d.out -time -eleRange 1 6 section 1 deformation 
recorder Element -file ele0_sec3d.out -time -eleRange 1 6 section 3 deformation 
puts "loading"
## Load Case = DEAD
# 均布荷载：eleLoad -ele $eleTag1 <$eleTag2 ....> -type -beamUniform $Wy $Wz <$Wx> 
# $Wy 表示截面局部坐标轴垂直方向的均布荷载，$Wz 表示截面局部坐标轴方向的均布荷载，$Wx 表示沿单无长度方向的均布荷载
pattern Plain 1 Linear {
eleLoad -ele 1 -type -beamUniform 0 -1.000E+001 0
eleLoad -ele 2 -type -beamUniform 0 -1.000E+001 0
eleLoad -ele 3 -type -beamUniform 0 -1.000E+001 0
eleLoad -ele 4 -type -beamUniform 0 -1.000E+001 0
eleLoad -ele 5 -type -beamUniform 0 -1.000E+001 0
eleLoad -ele 6 -type -beamUniform 0 -1.000E+001 0
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
# 监测结点位移，只有一个结点一个方向的位移，不能出来多个值监测，因为在一定荷载分布下位移的模式（分布）也是未知数
# 如果强制一个点或多个点达到目 标位移且没有荷载模型，那是支座变形求解而非位移控制加载，两者是不同的
# 监测（控制）结点为 5 号结点， 3自由度变形（竖向Z轴平动），每步位移为-0.1mm，即向下移动0.1mm
integrator DisplacementControl 5 3 -0.1
analysis Static
# analyze 100 表示总荷载步为 100 步，即最终控制的目标 位移为 0.1×100=10mm
analyze 100
