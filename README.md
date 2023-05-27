# OpenSees

## 目录
- [OpenSees](#opensees)
  - [目录](#目录)
  - [OpenSees实例](#opensees实例)
    - [实例01-桁架桥结构静力分析](#实例01-桁架桥结构静力分析)
    - [实例02-多层框架结构静力分析](#实例02-多层框架结构静力分析)
    - [实例03-简支梁弹塑性分析](#实例03-简支梁弹塑性分析)

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