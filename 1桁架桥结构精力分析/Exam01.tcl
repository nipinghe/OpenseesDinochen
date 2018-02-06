wipe
puts "System"
# 三维，每个节点6个自由度
model basic -ndm 3 -ndf 6
puts "node"
node 1 0.000E+000 0.000E+000 0.000E+000
node 2 0.000E+000 3.000E+003 0.000E+000
node 3 6.000E+003 0.000E+000 0.000E+000
node 4 6.000E+003 3.000E+003 0.000E+000
node 5 1.200E+004 0.000E+000 0.000E+000
node 6 1.200E+004 3.000E+003 0.000E+000
node 7 1.800E+004 0.000E+000 0.000E+000
node 8 1.800E+004 3.000E+003 0.000E+000
node 9 2.400E+004 0.000E+000 0.000E+000
node 10 2.400E+004 3.000E+003 0.000E+000
node 11 3.000E+003 0.000E+000 4.500E+003
node 12 3.000E+003 3.000E+003 4.500E+003
node 13 9.000E+003 0.000E+000 4.500E+003
node 14 9.000E+003 3.000E+003 4.500E+003
node 15 1.500E+004 0.000E+000 4.500E+003
node 16 1.500E+004 3.000E+003 4.500E+003
node 17 2.100E+004 0.000E+000 4.500E+003
node 18 2.100E+004 3.000E+003 4.500E+003
puts "restraint"
fix 1 1 1 1 0 0 0;
fix 2 1 1 1 0 0 0;
fix 9 1 1 1 0 0 0;
fix 10 1 1 1 0 0 0;
puts "material"
# OPENSEES 中材料分为单轴材料（单分量材料）及多轴材料。
# 单轴材料一般用于宏观单元，如塑性铰，弹塑性桁架，纤维单元中的纤维束等。
# 弹性材料没有开裂、屈服及破坏等过程
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Elastic 2 2.482E+004
uniaxialMaterial Elastic 3 1.999E+005
puts "transformation"
# 桁架单元不需要定义构件的局部坐标系
puts "element"
# 桁架单元：单元编号，节点1，节点2，面积，材料编号
element truss 1 11 12 1.305E+004 1
element truss 2 13 14 1.305E+004 1
element truss 3 15 16 1.305E+004 1
element truss 4 17 18 1.305E+004 1
element truss 5 11 13 2.120E+004 1
element truss 6 13 15 2.120E+004 1
element truss 7 15 17 2.120E+004 1
element truss 8 12 14 2.120E+004 1
element truss 9 14 16 2.120E+004 1
element truss 10 16 18 2.120E+004 1
element truss 11 1 11 1.305E+004 1
element truss 12 3 11 1.305E+004 1
element truss 13 3 13 1.305E+004 1
element truss 14 5 13 1.305E+004 1
element truss 15 5 15 1.305E+004 1
element truss 16 7 15 1.305E+004 1
element truss 17 7 17 1.305E+004 1
element truss 18 9 17 1.305E+004 1
element truss 19 2 12 1.305E+004 1
element truss 20 4 12 1.305E+004 1
element truss 21 4 14 1.305E+004 1
element truss 22 6 14 1.305E+004 1
element truss 23 6 16 1.305E+004 1
element truss 24 8 16 1.305E+004 1
element truss 25 8 18 1.305E+004 1
element truss 26 10 18 1.305E+004 1
element truss 27 12 13 1.305E+004 1
element truss 28 13 16 1.305E+004 1
element truss 29 16 17 1.305E+004 1
element truss 30 1 2 1.305E+004 1
element truss 31 3 4 1.305E+004 1
element truss 32 5 6 1.305E+004 1
element truss 33 7 8 1.305E+004 1
element truss 34 9 10 1.305E+004 1
element truss 35 1 3 2.120E+004 1
element truss 36 3 5 2.120E+004 1
element truss 37 5 7 2.120E+004 1
element truss 38 7 9 2.120E+004 1
element truss 39 2 4 2.120E+004 1
element truss 40 4 6 2.120E+004 1
element truss 41 6 8 2.120E+004 1
element truss 42 8 10 2.120E+004 1
element truss 43 2 3 1.305E+004 1
element truss 44 3 6 1.305E+004 1
element truss 45 6 7 1.305E+004 1
element truss 46 7 10 1.305E+004 1
puts "recorder"
# -time 参数
# 在力控制的荷载加载过程分析中，time 表示力的倍数，如控制分析每步荷载为 0.01，分析 100 步，则输出的值为：0.01，0.02，……，1.00
# 如采用指定力分布{P}作用下的位移加载控制分析，time 表示力的倍数，如达到第一步位移 d1需要荷载为 0.23{P}，则输出第一个 time 值为 0.23。
# 如果是时程分析，即输入地震波时程，time就是每个时间值，如时间间距为0.02s，输出值为0.02，0.04，……， 20.00。 
# 节点输出的内容：
# 位移（disp），速度（vel），加速度（accel），位移增量（incrDisp），振型值（"eigen i"），节点反力（reaction）
# disp 表示节点位移，即位移全量。Incrdisp 表示位移增量；速度，加速度，为时程分析输出才有意义，而振型计算需要定义质量源（mass）
recorder Node -file node0.out -time -nodeRange 1 18 -dof 1 2 3 disp
recorder Node -file node8.out -time -node 8 -dof 1 2 3 disp
# 单元输出的内容：
# globalForce，localForce
# 对于桁架单元，localForce 只能输出轴力（Axial Force），即每个单元只输出一个值，对于框架单元，一般输出 6 个值
recorder Element -file ele0.out -time -eleRange 1 46 localForce

puts "loading"
## Load Case = DEAD
# pattern Plain 代表静力荷载工况，Linear 代表线性荷载（默认设置）
# OPENSEES 的命令行，如有出现子命令，如荷载工况下的点荷载设置，纤维 截面中的纤维束设置，都是从命令再进入子命令进行定义，那么就出现括号{}。
pattern Plain 1 Linear {
	# 点荷载， FX=0，FY=0，FZ=-10000N，MX=0，MY=0， MZ=0
load 13 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
load 14 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
load 15 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
load 16 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
}

puts "analysis"
# 约束边界处理，采用一般处理，即致小数或大数法。（约束也可以采用罚函数 或拉格朗日处理方法）。 
constraints Plain
# 结点自由度编号采用输入结点的顺序，为一般结构使用。（如果采用优化后的 结点排序，方便带宽处理，提高计算效率）。 
numberer Plain
# 矩阵带宽处理采用一般（General）处理方法。 
system BandGeneral
# 收敛准则采用能量准则，容差为 1e-10，最大迭代步为 200 步。 
test EnergyIncr 1.0e-6 200
# 迭代算法采用线性法，一般用于处理弹性结果，原文件里是algorithm Newton
algorithm Linear
# 荷载采用力控制模式，荷载的分布取决于该命令以上设置的荷载工况{P}，每级增加荷载的倍数为 0.01，即每级增加荷载实际为输入 0.01{P}。 
integrator LoadControl 1.000E-002
analysis Static
analyze 100
