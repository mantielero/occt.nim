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

https://unlimited3d.wordpress.com/

https://unlimited3d.wordpress.com/2021/03/27/occt-minimal-viewer-setup/

https://github.com/gkv311/occt-webgl

# To explore
[hcparse](https://github.com/haxscramper/hcparse)

# About Handle

```nim
type
  #HandleAIS_InteractiveObject* = Handle[AIS_InteractiveObject]
  HandleAIS_InteractiveObject* {.importcpp:"opencascade::handle<AIS_InteractiveObject>", 
    header:"AIS_InteractiveObject.hxx", byref, pure, inheritable.} = object

type
  #HandleAIS_Shape* = Handle[AIS_Shape]
  HandleAIS_Shape* {.importcpp:"opencascade::handle<AIS_Shape>", header:"AIS_Shape.hxx", byref.} = object of HandleAIS_InteractiveObject


proc display*(this: var HandleAIS_InteractiveContext;
             theIObj: HandleAIS_InteractiveObject; theDispMode: cint;
             theSelectionMode: cint; theToUpdateViewer: bool;
             theDispStatus: AIS_DisplayStatus = aIS_DS_None) {.cdecl,
    importcpp: "#->Display(@)", header: "AIS_InteractiveContext.hxx".}

```

Quizá sería deseable un converter entre `Handle[T]` y `HandleT`.


Compila como:
```c++
typedef opencascade::handle<V3d_Viewer> TY__N9cwjSqa4b6f2jjlv6M5h9aw;
typedef opencascade::handle<AIS_InteractiveContext> TY__47md3wJ78U2lq504uWohNw;


	TY__N9cwjSqa4b6f2jjlv6M5h9aw theViewer;
	BRepPrimAPI_MakeBox box(1.0f, 2.0f, 3.0f);
	box.Build();
	TopoDS_Solid solid = box.Solid();

	opencascade::handle<AIS_Shape> aShapePrs = ((new AIS_Shape(solid)));
	TY__47md3wJ78U2lq504uWohNw aContext = ((new AIS_InteractiveContext(theViewer)));
	aContext->Display(aShapePrs, ((int) 1), ((int) 0), NIM_TRUE, ((AIS_DisplayStatus) 2));

```

Debería ser:
```c++
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();
Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object

Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer  
```