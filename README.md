# occt
OpenCascade nim wrapper.

Further documentation in [occt.nim site](https://mantielero.github.io/occt-site/)

# Purpose
Creating CAD models. The following has been done with **occt.nim**.

![](./examples/bottle.png)

[3d model viewer](https://3dviewer.net/embed.html#model=https://raw.githubusercontent.com/mantielero/occt.nim/main/examples/bottle.stp$camera=-8.39009,-87.10222,124.60955,0.00000,0.00000,38.50000,0.00000,1.00000,0.00000,45.00000$cameramode=perspective$envsettings=fishermans_bastion,off$backgroundcolor=255,255,255,255$defaultcolor=200,200,200$edgesettings=off,0,0,0,1)


# Status
Preliminar status. Some of the examples currently compiles and run. But the coverage of the library still is pretty low.

# TODO
- [ ] To fix some decissions taken early in the project

  - [ ] Make the wrapper folder "flatter" 
   
    The idea is to remove the nesting of the packages within the toolkits. It 
    is difficult to find the packages as it is.

    Some examples are: `breptools` and `brepcheck`.    

  - [ ] To revert the original names of some classes. 
    
    In particular, within the package `gp`. For example, to go back from `PntObj`
    into `gp_Pnt`.

```nim
sed -i 's/Pnt2dObj/gp_Pnt2d/g' *.nim
sed -i 's/Vec2dObj/gp_Vec2d/g' *.nim
sed -i 's/Lin2dObj/gp_Lin2d/g' *.nim
sed -i 's/Circ2dObj/gp_Circ2d/g' *.nim
```

gp_Elips2d
gp_Hypr2d
gp_Parab2d
gp_Pnt
gp_Vec
gp_Lin
gp_Circ
gp_Elips
gp_Hypr
gp_Parab
gp_Pln
gp_Cylinder
gp_Cone
gp_Sphere
gp_Torus
gp_Pnt2d