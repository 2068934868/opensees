# OpenSees

## 目录
- [OpenSees](#opensees)
  - [目录](#目录)
  - [OpenSees实例](#opensees实例)
    - [实例01-桁架桥结构静力分析](#实例01-桁架桥结构静力分析)
    - [实例02-多层框架结构静力分析](#实例02-多层框架结构静力分析)

## OpenSees实例
### 实例01-桁架桥结构静力分析
一个传统的桁架桥结构受重力荷载（节点荷载）的作用的静力分析，如图所示。主要演示OpenSEES桁架单元在结构分析中的应用。结构模型尺寸如下图所示，上弦杆与下弦杆采用H300x500x20x20型钢，所有的腹杆（斜杆）采用H300x300x15x15，顶部采力为4个100kN的集中力（不考虑自重影响），材料采用钢材，弹性模量E为200000MPa。弹性分析，求解跨中变形值。
<div align="center">
<img src="https://github.com/2068934868/image/blob/1c633267de126e311ea9da8f061a51174bd6c0ed/opensees/01-1.png">
</div>

<div align="center">
<img src="https://github.com/2068934868/image/blob/1c633267de126e311ea9da8f061a51174bd6c0ed/opensees/01-2.png">
</div>

建模TCL代码如下：
```tcl
wipe
##清除整个系统
puts "System"
model basic -ndm 3 -ndf 6
##建立系统维度，每个坐标点ndm有3个方向的维度，ndf有6个方向的自由度，桁架结构这里要修改为3
puts "restraint"
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
##这里是输入的节点坐标
puts "rigidDiaphragm"
##输入刚性隔板
puts "mass"
mass 1 9.272E-001 9.272E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 2 1.270E+000 1.270E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 3 2.386E+000 2.386E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 4 1.701E+000 1.701E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 5 1.701E+000 1.701E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 6 2.386E+000 2.386E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 7 2.386E+000 2.386E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 8 1.701E+000 1.701E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 9 9.272E-001 9.272E-001 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 10 1.270E+000 1.270E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 11 1.203E+000 1.203E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 12 1.546E+000 1.546E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 13 2.386E+000 2.386E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 14 1.701E+000 1.701E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 15 1.701E+000 1.701E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 16 2.386E+000 2.386E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 17 1.546E+000 1.546E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 18 1.203E+000 1.203E+000 0.000E+000 0.000E+000 0.000E+000 0.000E+000
##这部分是结构质量，本实例中计算的是静力分析，因此此处可以删去。
puts "node"
fix 1 1 1 1 0 0 0;
fix 2 1 1 1 0 0 0;
fix 9 1 1 1 0 0 0;
fix 10 1 1 1 0 0 0;
##这部分是节点约束，前三个1代表约束三个方向平动，因为边界条件是铰支座。
puts "Equal DOF"
puts "material"
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Elastic 2 2.482E+004
uniaxialMaterial Elastic 3 1.999E+005
nDMaterial ElasticIsotropic 101 1.999E+005 0.300
nDMaterial ElasticIsotropic 102 2.482E+004 0.200
nDMaterial ElasticIsotropic 103 1.999E+005 0.300
##TH300X500X20X20截面尺寸
section Fiber 1 -GJ 2.256E+011 {
fiber -1.200E+002 -2.400E+002 1.200E+003 1
fiber -6.000E+001 -2.400E+002 1.200E+003 1
fiber 0.000E+000 -2.400E+002 1.200E+003 1
fiber 6.000E+001 -2.400E+002 1.200E+003 1
fiber 1.200E+002 -2.400E+002 1.200E+003 1
fiber -1.200E+002 2.400E+002 1.200E+003 1
fiber -6.000E+001 2.400E+002 1.200E+003 1
fiber 0.000E+000 2.400E+002 1.200E+003 1
fiber 6.000E+001 2.400E+002 1.200E+003 1
fiber 1.200E+002 2.400E+002 1.200E+003 1
fiber 0.000E+000 -1.840E+002 1.840E+003 1
fiber 0.000E+000 -9.200E+001 1.840E+003 1
fiber 0.000E+000 0.000E+000 1.840E+003 1
fiber 0.000E+000 9.200E+001 1.840E+003 1
fiber 0.000E+000 1.840E+002 1.840E+003 1
}
##TH300X300X15X15 
section Fiber 2 -GJ 7.786E+010 {
fiber -1.200E+002 -1.425E+002 9.000E+002 1
fiber -6.000E+001 -1.425E+002 9.000E+002 1
fiber 0.000E+000 -1.425E+002 9.000E+002 1
fiber 6.000E+001 -1.425E+002 9.000E+002 1
fiber 1.200E+002 -1.425E+002 9.000E+002 1
fiber -1.200E+002 1.425E+002 9.000E+002 1
fiber -6.000E+001 1.425E+002 9.000E+002 1
fiber 0.000E+000 1.425E+002 9.000E+002 1
fiber 6.000E+001 1.425E+002 9.000E+002 1
fiber 1.200E+002 1.425E+002 9.000E+002 1
fiber 0.000E+000 -1.080E+002 8.100E+002 1
fiber 0.000E+000 -5.400E+001 8.100E+002 1
fiber 0.000E+000 0.000E+000 8.100E+002 1
fiber 0.000E+000 5.400E+001 8.100E+002 1
fiber 0.000E+000 1.080E+002 8.100E+002 1
}
##这里定义了桁架单元的纤维铰塑性fiber

##WALL1 
nDMaterial PlateFiber 601 102
section PlateFiber 701 601 250.00
##SLAB1 
nDMaterial PlateFiber 602 102
section PlateFiber 702 602 250.00
puts "transformation"
puts "element"
element trussSection 1 11 12 2
element trussSection 2 13 14 2
element trussSection 3 15 16 2
element trussSection 4 17 18 2
element trussSection 5 11 13 1
element trussSection 6 13 15 1
element trussSection 7 15 17 1
element trussSection 8 12 14 1
element trussSection 9 14 16 1
element trussSection 10 16 18 1
element trussSection 11 1 11 2
element trussSection 12 3 11 2
element trussSection 13 3 13 2
element trussSection 14 5 13 2
element trussSection 15 5 15 2
element trussSection 16 7 15 2
element trussSection 17 7 17 2
element trussSection 18 9 17 2
element trussSection 19 2 12 2
element trussSection 20 4 12 2
element trussSection 21 4 14 2
element trussSection 22 6 14 2
element trussSection 23 6 16 2
element trussSection 24 8 16 2
element trussSection 25 8 18 2
element trussSection 26 10 18 2
element trussSection 27 12 13 2
element trussSection 28 13 16 2
element trussSection 29 16 17 2
element trussSection 30 1 2 2
element trussSection 31 3 4 2
element trussSection 32 5 6 2
element trussSection 33 7 8 2
element trussSection 34 9 10 2
element trussSection 35 1 3 1
element trussSection 36 3 5 1
element trussSection 37 5 7 1
element trussSection 38 7 9 1
element trussSection 39 2 4 1
element trussSection 40 4 6 1
element trussSection 41 6 8 1
element trussSection 42 8 10 1
element trussSection 43 2 3 2
element trussSection 44 3 6 2
element trussSection 45 6 7 2
element trussSection 46 7 10 2
puts "shell element"
puts "SOLID element"
puts "recorder"
puts "loading"
## Load Case = DEAD
pattern Plain 1 Linear {
load 13 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
load 14 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
load 15 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
load 16 0.000E+000 0.000E+000 -1.000E+005 0.000E+000 0.000E+000 0.000E+000
}
##施加荷载，首先节点，后是6个自由度下力的大小
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator LoadControl 1.000E-002
analysis Static
analyze 100
```
node5的opensees计算结果与etabs的计算结果对比如图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/24c75f5be5296b1c1fad6d6784f5ec36ce760352/opensees/01-3.png">
</div>

### 实例02-多层框架结构静力分析
本例是一个四层的框架结构（梁柱结构）受风荷载（楼层荷载）的作用的静力分析，如图所示。本例主要演示OPENSEES弹性梁柱单元的建模与分析过程。结构模型尺寸如图所示。梁截面为200x600及400x600。柱截面为400x400和600x600，梁柱均采用C40。风荷载信息：B类场地，基本风压为0.50kN/m2，风荷载为Y方向。附加恒载为1.5kN/m2，活载为2.0kN/m2，楼板厚度为100mm。求风荷载作用下，结构的变形。
