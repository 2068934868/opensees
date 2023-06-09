# 刘赵澄源OpenSees学习笔记

## 目录
- [刘赵澄源OpenSees学习笔记](#刘赵澄源opensees学习笔记)
  - [目录](#目录)
  - [OpenSees实例](#opensees实例)
    - [实例01-桁架桥结构静力分析](#实例01-桁架桥结构静力分析)
    - [实例02-多层框架结构静力分析](#实例02-多层框架结构静力分析)
    - [实例03-简支梁弹塑性分析](#实例03-简支梁弹塑性分析)
    - [实例04-框架结构推覆分析](#实例04-框架结构推覆分析)
    - [实例05-框架结构振型模态分析](#实例05-框架结构振型模态分析)
    - [实例06-框架结构弹性时程分析](#实例06-框架结构弹性时程分析)
    - [实例07-带BRB的钢结构低周往复分析](#实例07-带brb的钢结构低周往复分析)

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

<details>
  <summary>点击展开/折叠代码区</summary>

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
</details>

node5的opensees计算结果与etabs的计算结果对比如图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/24c75f5be5296b1c1fad6d6784f5ec36ce760352/opensees/01-3.png">
</div>

### 实例02-多层框架结构静力分析
本例是一个四层的框架结构（梁柱结构）受风荷载（楼层荷载）的作用的静力分析，如图所示。本例主要演示OPENSEES弹性梁柱单元的建模与分析过程。结构模型尺寸如图所示。梁截面为200x600及400x600。柱截面为400x400和600x600，梁柱均采用C40。风荷载信息：B类场地，基本风压为0.50kN/m2，风荷载为Y方向。附加恒载为1.5kN/m2，活载为2.0kN/m2，楼板厚度为100mm。求风荷载作用下，结构的变形。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0aaee1d6ef3483a41fed110081c8bcba92211a3b/opensees/02-1.png">
</div>

建模TCL代码如下：
<details>
  <summary>点击展开/折叠代码区</summary>

```tcl
wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
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
node 35 6.000E+003 2.500E+003 1.350E+004
node 36 6.000E+003 2.500E+003 1.050E+004
node 37 6.000E+003 2.500E+003 7.500E+003
node 38 6.000E+003 2.500E+003 4.500E+003
puts "rigidDiaphragm"
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
puts "node"
fix 31 0 0 1 1 1 0
fix 32 0 0 1 1 1 0
fix 33 0 0 1 1 1 0
fix 34 0 0 1 1 1 0
fix 35 0 0 1 1 1 0
fix 36 0 0 1 1 1 0
fix 37 0 0 1 1 1 0
fix 38 0 0 1 1 1 0
fix 25 1 1 1 1 1 1;
fix 26 1 1 1 1 1 1;
fix 27 1 1 1 1 1 1;
fix 28 1 1 1 1 1 1;
fix 29 1 1 1 1 1 1;
fix 30 1 1 1 1 1 1;
puts "material"
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Elastic 2 3.250E+004
uniaxialMaterial Elastic 3 1.999E+005
puts "transformation"
geomTransf Linear 1 1.000 0.000 0.000 
geomTransf Linear 2 1.000 0.000 0.000 
geomTransf Linear 3 1.000 0.000 0.000 
geomTransf Linear 4 1.000 0.000 0.000 
geomTransf Linear 5 1.000 0.000 0.000 
geomTransf Linear 6 1.000 0.000 0.000 
geomTransf Linear 7 0.000 0.000 1.000 
geomTransf Linear 8 0.000 0.000 1.000 
geomTransf Linear 9 0.000 0.000 1.000 
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
recorder Node -file node4.out -time -node 4 -dof 1 2 3 disp
recorder Element -file ele0.out -time -eleRange 1 52 localForce
recorder Node -file story_disp.out -time -nodeRange 35 38 -dof 2 disp
puts "loading"
## Load Case = WINDY
pattern Plain 3 Linear {
load 31 1.197E-012 1.955E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 32 2.237E-012 3.653E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 33 1.991E-012 3.252E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
load 34 2.107E-012 3.442E+004 0.000E+000 0.000E+000 0.000E+000 0.000E+000
}
puts "analysis"
constraints Lagrange
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator LoadControl 0.1
analysis Static
analyze 10
```
</details>

框架顶点位移的opensees以及etabs的计算结果对比如下图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0aaee1d6ef3483a41fed110081c8bcba92211a3b/opensees/02-2.png">
</div>
由上图看出，opensees与etabs计算结果不同，原因是opensees梁截面采用的是伯努利梁，etabs采用的是铁木辛柯梁。其中伯努利梁是不考虑抗剪强度的，在etabs中调整如下图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0aaee1d6ef3483a41fed110081c8bcba92211a3b/opensees/02-3.png">
</div>
结果如下：
<div align="center">
<img src="https://github.com/2068934868/image/blob/0aaee1d6ef3483a41fed110081c8bcba92211a3b/opensees/02-4.png">
</div>
楼层位移对比如下：
<div align="center">
<img src="https://github.com/2068934868/image/blob/0aaee1d6ef3483a41fed110081c8bcba92211a3b/opensees/02-5.png">
</div>

### 实例03-简支梁弹塑性分析
本例是第一个弹塑性分析的例子，OpenSEES的其中一个强项就是采用宏观单元对结构进行弹塑性分析。简支梁结构模型如下图所示，简支梁长度为3000mm，划分成6段。截面为矩形混凝土截面，截面与配筋如下图所示，混凝土与钢材的材料本构如下图所示。求解在均布荷载作用下，采用位移控制，查看结构的整个位移-荷载曲线。

首先，在做本例之前，做一个受到轴向压力的混凝土柱，并对其做push分析。

<div align="center">
<img src="https://github.com/2068934868/image/blob/5a1ea0e0f6271c91ad9146b1f4b9203138ca0363/opensees/03-1.png">
</div>

建模TCL代码如下：
<details>
  <summary>点击展开/折叠代码区</summary>

```tcl
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
load 2 0.000E+000 0.000E+000 -1.500E+006 0.000E+000 0.000E+000 0.000E+000
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

```
</details>

在eto进行框架截面非线性设置时，其中rebar setting中的钢筋面积指的是X方向以及Y方向顶部或者底部（或者左侧或者右侧，即一半）的钢筋总面积，divide代表将截面分成多少份，Bar Num代表该方向顶部或底部有多少根钢筋。

<div align="center">
<img src="https://github.com/2068934868/image/blob/5a1ea0e0f6271c91ad9146b1f4b9203138ca0363/opensees/03-2.png">
</div>

下图为弹性材料的push曲线，可以看出，此处采用的是弹性分析，其曲线是一条直线。

<div align="center">
<img src="https://github.com/2068934868/image/blob/5a1ea0e0f6271c91ad9146b1f4b9203138ca0363/opensees/03-3.png">
</div>

下图为设置了非线性材料后的push曲线，可以看出，其进入了非线性。

<div align="center">
<img src="https://github.com/2068934868/image/blob/5a1ea0e0f6271c91ad9146b1f4b9203138ca0363/opensees/03-4.png">
</div>

以下为简支梁模型的建模信息。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0db8c98204cc7d8b963ddf92bd3f0496b2e7104e/opensees/03-5.gif">
</div>

建模TCL代码如下：
<details>
  <summary>点击展开/折叠代码区</summary>

```tcl
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
puts "rigidDiaphragm"
puts "node"
fix 1 1 1 1 1 0 1;
fix 2 0 1 1 1 0 1;
fix 3 0 1 0 1 0 1;
fix 4 0 1 0 1 0 1;
fix 5 0 1 0 1 0 1;
fix 6 0 1 0 1 0 1;
fix 7 0 1 0 1 0 1;
puts "material"
uniaxialMaterial Steel01 1 335 200000 0.00001 
uniaxialMaterial Concrete01 2 -26.8 -0.002 -10 -0.0033
##NB300X600 
section Fiber 1 {
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
element nonlinearBeamColumn 1 1 3 3 1 1
element nonlinearBeamColumn 2 3 4 3 1 2
element nonlinearBeamColumn 3 4 5 3 1 3
element nonlinearBeamColumn 4 5 6 3 1 4
element nonlinearBeamColumn 5 6 7 3 1 5
element nonlinearBeamColumn 6 7 2 3 1 6
puts "recorder"
recorder Node -file node0.out -time -nodeRange 1 7 -dof 1 2 3 disp
recorder Node -file node5.out -time -node 5 -dof 1 2 3 disp
recorder Element -file ele0.out -time -eleRange 1 6 localForce
recorder Element -file ele0_sec1d.out -time -eleRange 1 6 section 1 deformation 
recorder Element -file ele0_sec3d.out -time -eleRange 1 6 section 3 deformation 
puts "loading"
## Load Case = DEAD
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
integrator DisplacementControl 5 3 -0.1
analysis Static
analyze 100

```
</details>


### 实例04-框架结构推覆分析
本例是一个典型的高层结构静力弹塑性分析的实例，也称为Push-Over实例，即结构施加恒定的重力荷载后，施加一定分布模式（如倒三角形模式）的侧向 力，实现位移控制加载，使结构达到目标位移的分析过程。实体为四层混凝土框架结构，梁柱截面如下图所示，梁截面为B300×600、B300×500，柱 截面为C400×400、C400×600。混凝土本构及钢筋本构如下图所示。混凝土楼板厚度均为120mm，附加恒荷载DEAD为1.5kN/m2，活载LIVE为2.0kN/m2，重力荷载代表值组合为1.0×DEAD+0.5×LIVE。求Push-Over曲线的全过程。

<div align="center">
<img src="https://github.com/2068934868/image/blob/0db8c98204cc7d8b963ddf92bd3f0496b2e7104e/opensees/04-1.gif">
</div>

建模TCL代码如下：
<details>
  <summary>点击展开/折叠代码区</summary>

```tcl
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
##这里是加梁上荷载，可以看到，同一个单元有好几行，这是由于etabs建模时采用的是梯形荷载，opensees采用的是均布荷载，这里多行的意义是将其等效。

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

```
</details>

pushover曲线如下所示。

<div align="center">
<img src="https://github.com/2068934868/image/blob/0db8c98204cc7d8b963ddf92bd3f0496b2e7104e/opensees/04-2.png">
</div>

### 实例05-框架结构振型模态分析
本例仍采用实例4的框架结构，为了方便对比，改采用弹性截面。结构荷载情况与实例4相同（侧向力荷载不需要施加）。计算其各振型周期与模态。（重力荷载代表值组合为1.0×DEAD+0.5×LIVE）。
<div align="center">
<img src="https://github.com/2068934868/image/blob/55883af7ee8a14d5f55b91363f04bd7106faa4d3/opensees/05-1.gif">
</div>

建模TCL代码如下：
<details>
  <summary>点击展开/折叠代码区</summary>

```tcl
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
puts "mass"
mass 1 8.604E+000 8.604E+000 8.604E+000 0.000E+000 0.000E+000 0.000E+000
mass 2 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 3 8.604E+000 8.604E+000 8.604E+000 0.000E+000 0.000E+000 0.000E+000
mass 4 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 5 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 6 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 7 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 8 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 9 8.604E+000 8.604E+000 8.604E+000 0.000E+000 0.000E+000 0.000E+000
mass 10 8.604E+000 8.604E+000 8.604E+000 0.000E+000 0.000E+000 0.000E+000
mass 11 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 12 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 13 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 14 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 15 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 16 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 17 8.604E+000 8.604E+000 8.604E+000 0.000E+000 0.000E+000 0.000E+000
mass 18 8.604E+000 8.604E+000 8.604E+000 0.000E+000 0.000E+000 0.000E+000
mass 19 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 20 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 21 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
mass 22 4.302E+000 4.302E+000 4.302E+000 0.000E+000 0.000E+000 0.000E+000
puts "node"
fix 23 1 1 1 1 1 1;
fix 24 1 1 1 1 1 1;
fix 25 1 1 1 1 1 1;
fix 26 1 1 1 1 1 1;
fix 27 1 1 1 1 1 1;
fix 28 1 1 1 1 1 1;
puts "material"
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Elastic 2 2.680E+004
uniaxialMaterial Elastic 3 1.999E+005
puts "transformation"
geomTransf Linear 1 1.000 0.000 0.000 
geomTransf Linear 2 1.000 0.000 0.000 
geomTransf Linear 3 1.000 0.000 0.000 
geomTransf Linear 4 1.000 0.000 0.000 
geomTransf Linear 5 0.000 0.000 1.000 
geomTransf Linear 6 0.000 0.000 1.000 
geomTransf Linear 7 0.000 0.000 1.000 
geomTransf Linear 8 0.000 0.000 1.000 
geomTransf Linear 9 1.000 0.000 0.000 
geomTransf Linear 10 1.000 0.000 0.000 
geomTransf Linear 11 1.000 0.000 0.000 
geomTransf Linear 12 1.000 0.000 0.000 
geomTransf Linear 13 1.000 0.000 0.000 
geomTransf Linear 14 1.000 0.000 0.000 
geomTransf Linear 15 0.000 0.000 1.000 
geomTransf Linear 16 0.000 0.000 1.000 
geomTransf Linear 17 0.000 0.000 1.000 
geomTransf Linear 18 0.000 0.000 1.000 
geomTransf Linear 19 0.000 0.000 1.000 
geomTransf Linear 20 0.000 0.000 1.000 
geomTransf Linear 21 0.000 0.000 1.000 
geomTransf Linear 22 1.000 0.000 0.000 
geomTransf Linear 23 1.000 0.000 0.000 
geomTransf Linear 24 1.000 0.000 0.000 
geomTransf Linear 25 1.000 0.000 0.000 
geomTransf Linear 26 1.000 0.000 0.000 
geomTransf Linear 27 1.000 0.000 0.000 
geomTransf Linear 28 0.000 0.000 1.000 
geomTransf Linear 29 0.000 0.000 1.000 
geomTransf Linear 30 0.000 0.000 1.000 
geomTransf Linear 31 0.000 0.000 1.000 
geomTransf Linear 32 0.000 0.000 1.000 
geomTransf Linear 33 0.000 0.000 1.000 
geomTransf Linear 34 0.000 0.000 1.000 
geomTransf Linear 35 1.000 0.000 0.000 
geomTransf Linear 36 1.000 0.000 0.000 
geomTransf Linear 37 1.000 0.000 0.000 
geomTransf Linear 38 1.000 0.000 0.000 
geomTransf Linear 39 1.000 0.000 0.000 
geomTransf Linear 40 1.000 0.000 0.000 
geomTransf Linear 41 0.000 0.000 1.000 
geomTransf Linear 42 0.000 0.000 1.000 
geomTransf Linear 43 0.000 0.000 1.000 
geomTransf Linear 44 0.000 0.000 1.000 
geomTransf Linear 45 0.000 0.000 1.000 
geomTransf Linear 46 0.000 0.000 1.000 
geomTransf Linear 47 0.000 0.000 1.000 
puts "element"
element elasticBeamColumn 1 1 2 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 1
element elasticBeamColumn 2 3 4 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 2
element elasticBeamColumn 3 5 6 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 3
element elasticBeamColumn 4 7 8 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 4
element elasticBeamColumn 5 6 8 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 5
element elasticBeamColumn 6 4 2 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 6
element elasticBeamColumn 7 8 2 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 7
element elasticBeamColumn 8 6 4 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 8
element elasticBeamColumn 9 9 3 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 9
element elasticBeamColumn 10 10 1 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 10
element elasticBeamColumn 11 11 5 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 11
element elasticBeamColumn 12 12 7 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 12
element elasticBeamColumn 13 13 14 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 13
element elasticBeamColumn 14 15 16 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 14
element elasticBeamColumn 15 7 1 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 15
element elasticBeamColumn 16 1 16 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 16
element elasticBeamColumn 17 3 14 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 17
element elasticBeamColumn 18 5 3 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 18
element elasticBeamColumn 19 3 1 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 19
element elasticBeamColumn 20 14 16 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 20
element elasticBeamColumn 21 5 7 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 21
element elasticBeamColumn 22 17 9 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 22
element elasticBeamColumn 23 18 10 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 23
element elasticBeamColumn 24 19 11 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 24
element elasticBeamColumn 25 20 12 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 25
element elasticBeamColumn 26 21 13 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 26
element elasticBeamColumn 27 22 15 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 27
element elasticBeamColumn 28 12 10 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 28
element elasticBeamColumn 29 10 15 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 29
element elasticBeamColumn 30 9 13 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 30
element elasticBeamColumn 31 11 9 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 31
element elasticBeamColumn 32 9 10 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 32
element elasticBeamColumn 33 13 15 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 33
element elasticBeamColumn 34 11 12 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 34
element elasticBeamColumn 35 23 17 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 35
element elasticBeamColumn 36 24 18 1.600E+005 2.680E+004 1.117E+004 3.605E+009 2.133E+009 2.133E+009 36
element elasticBeamColumn 37 25 19 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 37
element elasticBeamColumn 38 26 20 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 38
element elasticBeamColumn 39 27 21 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 39
element elasticBeamColumn 40 28 22 2.400E+005 2.680E+004 1.117E+004 7.512E+009 7.200E+009 3.200E+009 40
element elasticBeamColumn 41 20 18 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 41
element elasticBeamColumn 42 18 22 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 42
element elasticBeamColumn 43 17 21 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 43
element elasticBeamColumn 44 19 17 1.500E+005 2.680E+004 1.117E+004 2.817E+009 3.125E+009 1.125E+009 44
element elasticBeamColumn 45 17 18 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 45
element elasticBeamColumn 46 21 22 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 46
element elasticBeamColumn 47 19 20 1.800E+005 2.680E+004 1.117E+004 3.708E+009 5.400E+009 1.350E+009 47
puts "recorder"
recorder Node -file eigen1_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 1"
recorder Node -file eigen2_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 2"
recorder Node -file eigen3_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 3"
recorder Node -file eigen4_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 4"
recorder Node -file eigen5_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 5"
recorder Node -file eigen6_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 6"
recorder Node -file eigen7_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 7"
recorder Node -file eigen8_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 8"
recorder Node -file eigen9_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 9"
recorder Node -file eigen10_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 10"
recorder Node -file eigen11_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 11"
recorder Node -file eigen12_node0.out -time -nodeRange 1 28 -dof 1 2 3 "eigen 12"
set numModes 12
set lambda [eigen  $numModes]
set period "Periods.txt"
set Periods [open $period "w"]
puts $Periods " $lambda"
close $Periods
record


```
</details>

opensees模态计算结果与etabs对比如下所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/55883af7ee8a14d5f55b91363f04bd7106faa4d3/opensees/05-2.gif">
</div>


### 实例06-框架结构弹性时程分析
本例仍采用实例4（实例5）的框架结构，为了方便对比，改采用弹性截面，主要进行弹性时程分析，材料为弹性，时程分析即动力分析。结构荷载情况与实例4相同（侧向力荷载不需要施加，实际侧向力为地面加速度）。计算结构在地震作用下的响应（主要提取位移结果）。（重力荷载代表值组合为1.0×DEAD+0.5×LIVE）。

注意：上述实例讲到了质量矩阵（质量源）的定义，刚度矩阵通过结构几何与材料属性得到，那么接下来只需要定义了结构阻尼，就可以进行结构动力分析，即时程分析。

<div align="center">
<img src="https://github.com/2068934868/image/blob/cdd515f2f96f179bcc88f0277c816bd32cbde950/opensees/06-1.gif">
</div>

地震波时程曲线如下图所示。

<div align="center">
<img src="https://github.com/2068934868/image/blob/cdd515f2f96f179bcc88f0277c816bd32cbde950/opensees/06-2.gif">
</div>

建模TCL代码如下：
<details>
  <summary>点击展开/折叠代码区</summary>

```tcl

wipe
puts "System"
model basic -ndm 3 -ndf 6
puts "restraint"
node 1 0.000E+000 0.000E+000 1.000E+004
node 2 0.000E+000 0.000E+000 1.300E+004
node 3 0.000E+000 4.500E+003 1.000E+004
node 4 0.000E+000 4.500E+003 1.300E+004
node 5 4.500E+003 0.000E+000 1.000E+004
node 6 4.500E+003 0.000E+000 1.300E+004
node 7 4.500E+003 4.500E+003 1.000E+004
node 8 4.500E+003 4.500E+003 1.300E+004
node 9 9.000E+003 0.000E+000 1.000E+004
node 10 9.000E+003 0.000E+000 1.300E+004
node 11 9.000E+003 4.500E+003 1.000E+004
node 12 9.000E+003 4.500E+003 1.300E+004
node 13 0.000E+000 0.000E+000 7.000E+003
node 14 0.000E+000 4.500E+003 7.000E+003
node 15 4.500E+003 0.000E+000 7.000E+003
node 16 4.500E+003 4.500E+003 7.000E+003
node 17 9.000E+003 0.000E+000 7.000E+003
node 18 9.000E+003 4.500E+003 7.000E+003
node 19 0.000E+000 0.000E+000 4.000E+003
node 20 0.000E+000 4.500E+003 4.000E+003
node 21 4.500E+003 0.000E+000 4.000E+003
node 22 4.500E+003 4.500E+003 4.000E+003
node 23 9.000E+003 0.000E+000 4.000E+003
node 24 9.000E+003 4.500E+003 4.000E+003
node 25 0.000E+000 0.000E+000 0.000E+000
node 26 0.000E+000 4.500E+003 0.000E+000
node 27 4.500E+003 0.000E+000 0.000E+000
node 28 4.500E+003 4.500E+003 0.000E+000
node 29 9.000E+003 0.000E+000 0.000E+000
node 30 9.000E+003 4.500E+003 0.000E+000
puts "rigidDiaphragm"
puts "mass"
mass 1 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 2 3.896E+002 3.896E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 3 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 4 3.896E+002 3.896E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 5 7.118E+002 7.118E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 6 6.276E+002 6.276E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 7 7.118E+002 7.118E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 8 6.276E+002 6.276E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 9 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 10 3.896E+002 3.896E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 11 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 12 3.896E+002 3.896E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 13 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 14 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 15 7.118E+002 7.118E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 16 7.118E+002 7.118E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 17 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 18 4.738E+002 4.738E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 19 5.019E+002 5.019E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 20 5.019E+002 5.019E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 21 7.399E+002 7.399E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 22 7.399E+002 7.399E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 23 5.019E+002 5.019E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 24 5.019E+002 5.019E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 25 1.123E+002 1.123E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 26 1.123E+002 1.123E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 27 1.123E+002 1.123E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 28 1.123E+002 1.123E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 29 1.123E+002 1.123E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
mass 30 1.123E+002 1.123E+002 0.000E+000 0.000E+000 0.000E+000 0.000E+000
puts "node"
fix 25 1 1 1 1 1 1;
fix 26 1 1 1 1 1 1;
fix 27 1 1 1 1 1 1;
fix 28 1 1 1 1 1 1;
fix 29 1 1 1 1 1 1;
fix 30 1 1 1 1 1 1;
puts "Equal DOF"
puts "material"
uniaxialMaterial Elastic 1 1.999E+005
uniaxialMaterial Elastic 2 2.680E+004
uniaxialMaterial Elastic 3 1.999E+005

puts "transformation"
geomTransf Linear 1 1.000 0.000 0.000 
geomTransf Linear 2 1.000 0.000 0.000 
geomTransf Linear 3 1.000 0.000 0.000 
geomTransf Linear 4 1.000 0.000 0.000 
geomTransf Linear 5 1.000 0.000 0.000 
geomTransf Linear 6 1.000 0.000 0.000 
geomTransf Linear 7 0.000 0.000 1.000 
geomTransf Linear 8 0.000 0.000 1.000 
geomTransf Linear 9 0.000 0.000 1.000 
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
element elasticBeamColumn 1 1 2 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 1
element elasticBeamColumn 2 3 4 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 2
element elasticBeamColumn 3 5 6 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 3
element elasticBeamColumn 4 7 8 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 4
element elasticBeamColumn 5 9 10 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 5
element elasticBeamColumn 6 11 12 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 6
element elasticBeamColumn 7 4 8 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 7
element elasticBeamColumn 8 2 4 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 8
element elasticBeamColumn 9 2 6 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 9
element elasticBeamColumn 10 6 8 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 10
element elasticBeamColumn 11 6 10 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 11
element elasticBeamColumn 12 10 12 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 12
element elasticBeamColumn 13 8 12 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 13
element elasticBeamColumn 14 13 1 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 14
element elasticBeamColumn 15 14 3 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 15
element elasticBeamColumn 16 15 5 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 16
element elasticBeamColumn 17 16 7 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 17
element elasticBeamColumn 18 17 9 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 18
element elasticBeamColumn 19 18 11 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 19
element elasticBeamColumn 20 3 7 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 20
element elasticBeamColumn 21 1 3 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 21
element elasticBeamColumn 22 1 5 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 22
element elasticBeamColumn 23 5 7 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 23
element elasticBeamColumn 24 5 9 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 24
element elasticBeamColumn 25 9 11 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 25
element elasticBeamColumn 26 7 11 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 26
element elasticBeamColumn 27 19 13 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 27
element elasticBeamColumn 28 20 14 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 28
element elasticBeamColumn 29 21 15 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 29
element elasticBeamColumn 30 22 16 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 30
element elasticBeamColumn 31 23 17 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 31
element elasticBeamColumn 32 24 18 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 32
element elasticBeamColumn 33 14 16 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 33
element elasticBeamColumn 34 13 14 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 34
element elasticBeamColumn 35 13 15 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 35
element elasticBeamColumn 36 15 16 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 36
element elasticBeamColumn 37 15 17 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 37
element elasticBeamColumn 38 17 18 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 38
element elasticBeamColumn 39 16 18 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 39
element elasticBeamColumn 40 25 19 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 40
element elasticBeamColumn 41 26 20 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 41
element elasticBeamColumn 42 27 21 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 42
element elasticBeamColumn 43 28 22 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 43
element elasticBeamColumn 44 29 23 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 44
element elasticBeamColumn 45 30 24 2.500E+005 3.600E+003 1.500E+003 8.802E+009 5.208E+009 5.208E+009 45
element elasticBeamColumn 46 20 22 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 46
element elasticBeamColumn 47 19 20 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 47
element elasticBeamColumn 48 19 21 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 48
element elasticBeamColumn 49 21 22 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 49
element elasticBeamColumn 50 21 23 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 50
element elasticBeamColumn 51 23 24 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 51
element elasticBeamColumn 52 22 24 1.500E+005 3.600E+003 1.500E+003 2.817E+009 3.125E+009 1.125E+009 52
puts "shell element"
puts "SOLID element"
puts "recorder"
recorder Node -file node2.out -time -node 2 -dof 1 disp
recorder Node -file node0.out -time -nodeRange 1 30 -dof 1 2 3 disp
 
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
set iGMfile "GM1X.txt";
set iGMdirection "1"; 
set iGMfact "1";  
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
analyze 2048 0.02


```
</details>

对比结果如下图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/cdd515f2f96f179bcc88f0277c816bd32cbde950/opensees/06-3.png">
</div>

etabs的时程动画如下图所示。

<div align="center">
<img src="https://github.com/2068934868/image/blob/cdd515f2f96f179bcc88f0277c816bd32cbde950/opensees/06-4.gif">
</div>

opensees后处理动画如下图所示。

<div align="center">
<img src="https://github.com/2068934868/image/blob/cdd515f2f96f179bcc88f0277c816bd32cbde950/opensees/06-5.gif">
</div>

可以看出opensees的后处理动画框架单元没有弯曲变形，这是因为我导出opensees的结果仅导出了梁柱节点的时程结果，所以在绘制动画时，梁柱单元的变形无法体现。

### 实例07-带BRB的钢结构低周往复分析

本例一个带防屈曲支撑的钢结构的低周往复分析实例，与前面的实例8有类似。在钢结构（弹性假定）中设置一组防屈曲支撑构件，考察构件在一定重力荷载作用下，在低周往复荷载作用下，防屈曲支撑如何帮结构进行能量耗散的整个力学过程。实例为两层带支撑的钢框架结构，框架及支撑截面如下图所示，无楼板，所有梁截面均为H300×300×35×12，所有柱构件均为H300×300×35×35，防屈曲支撑等效弹性截面为H400×400×20×20。如下图所示。梁构件施加12KN/M的线荷载作为初始荷载，侧向力分布为倒三角分布。结构层高3000，柱网为6000X6000.

<div align="center">
<img src="https://github.com/2068934868/image/blob/0cb77d1626269f9eedf2c0fca8785512a55c129c/opensees/7.1.jpg">
</div>


建模TCL代码如下：
<details>
  <summary>点击展开/折叠代码区</summary>

```tcl
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

##这些命令的意思是，在顶部荷载push的荷载模式下，对顶部节点施加位移1方向加载，每一个加载步为4mm，推50步，合计200mm。
```
</details>

位移加载模式如下图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0cb77d1626269f9eedf2c0fca8785512a55c129c/opensees/7-2.png">
</div>

荷载倍数与顶部节点侧向位移的关系如下图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0cb77d1626269f9eedf2c0fca8785512a55c129c/opensees/7-3.png">
</div>

BRB的应力-应变曲线如下图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0cb77d1626269f9eedf2c0fca8785512a55c129c/opensees/7-4.png">
</div>

结构低周往复变形如下图所示。
<div align="center">
<img src="https://github.com/2068934868/image/blob/0cb77d1626269f9eedf2c0fca8785512a55c129c/opensees/7-5.gif">
</div>
