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

  - [ ] To revert the original names of some classes. 
    
    In particular, within the package `gp`. For example, to go back from `PntObj`
    into `gp_Pnt`.

```sh
find ./ -name "*.nim" -exec sed -i 's/PntObj/gp_Pnt/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/GTrsfObj/gp_GTrsf/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/TrsfObj/gp_Trsf/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/VecObj/gp_Vec/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/LinObj/gp_Lin/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/CircObj/gp_Circ/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/ElipsObj/gp_Elips/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/HyprObj/gp_Hypr/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/ParabObj/gp_Parab/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/CylinderObj/gp_Cylinder/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/ConeObj/gp_Cone/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/SphereObj/gp_Sphere/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/TorusObj/gp_Torus/g' {} \;


find ./ -name "*.nim" -exec sed -i 's/Pnt2dObj/gp_Pnt2d/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/Vec2dObj/gp_Vec2d/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/Lin2dObj/gp_Lin2d/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/Circ2dObj/gp_Circ2d/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/Elips2dObj/gp_Elips2d/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/Hypr2dObj/gp_Hypr2d/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/Parab2dObj/gp_Parab2d/g' {} \;
find ./ -name "*.nim" -exec sed -i 's/Circ2dObj/gp_Circ2d/g' {} \;


```


  gp_GTrsf* = GTrsf
  gp_Pnt*   = gp_Pnt
  gp_Trsf*  = TrsfObj



