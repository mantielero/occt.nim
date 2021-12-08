# occt
OpenCascade nim wrapper.

Further documentation in [occt.nim site](https://mantielero.github.io/occt-site/)

# Status
Some of the examples currently compiles and run. But the coverage of the library still is pretty low.

![](https://i.imgur.com/B7S6PIo.png)



# Tutorials
https://occtutorials.wordpress.com/

# Exporting to STEP
https://techoverflow.net/2019/06/13/how-to-export-step-file-in-opencascade/

Implemented

# Display something
```c++
Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
 
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();
Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer
```

- AIS
- V3d_Viewer

https://stackoverflow.com/questions/51168352/reading-step-file-with-open-cascade

# Inspiration
https://techoverflow.net/category/opencascade/
https://occtutorials.wordpress.com/
https://cadquery.readthedocs.io/en/latest/quickstart.html
OCCUtils

# To explore
[hcparse](https://github.com/haxscramper/hcparse)