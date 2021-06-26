# occt
OpenCascade nim wrapper

## OpenCascade overview
Por un lado, parece que Open CASCADE Technology, está organizado en toolkit (por ejemplo [tkGeomBase](https://old.opencascade.com/doc/occt-7.3.0/refman/html/toolkit_tkgeombase.html)). Los toolkit se dividen en paquetes.

In Open CASCADE Technology a package is a group of classes providing related functionality. The classes have names that start with the name of a package they belong to. For example, [Geom_Line](https://old.opencascade.com/doc/occt-7.3.0/refman/html/class_geom___line.html) and [Geom_Circle](https://old.opencascade.com/doc/occt-7.3.0/refman/html/class_geom___circle.html) classes belong to the Geom package. 

AIS
Adaptor2D / Adaptor3D
AdvApp2Var
App
Approx
Aspect
BOPAlgo
BOPDS
BOPTools
BRep: Boundary Representation
BSplCLib
BVH
BiT
Bin
Blend
Bnd
CDF / CDM
...
Geom2d

- Geom: The Geom package implements 3D geometric objects: elementary curves and surfaces are provided as well as more complex ones (such as Bezier and BSpline). The Geom package provides only the data structure of geometric entities. You can directly instantiate classes belonging to Geom, but it is easier to compute elementary curves and surfaces by using the GC package. 
- [GC](https://old.opencascade.com/doc/occt-7.3.0/refman/html/package_gc.html)

Graphic3d
HLR Algo/BRep...
IF
IGES
IMesh / IVtk
MAT
MEsh
NCollection
OSD
OpenGl
RWStep
STEP
Standard
Std
Storage
TCol
TDF
TopoDS


from OCCT.BRep import BRep_Builder
from OCCT.BRepTools import BRepTools
from OCCT.IGESControl import IGESControl_Reader, IGESControl_Writer
from OCCT.STEPControl import (STEPControl_Reader, STEPControl_Writer,
                              STEPControl_AsIs)
from OCCT.TopoDS import TopoDS_Shape

https://github.com/FreeCAD/FreeCAD/blob/master/src/Mod/Part/App/ImportStep.cpp
https://old.opencascade.com/doc/occt-7.3.0/overview/html/occt__tutorial.html#sec6

https://github.com/lvk88/OccTutorial
https://github.com/lvk88/OccTutorial/blob/master/Chapter1_Basics/runners/chapter1_1.cpp
https://github.com/tpaviot/pythonocc-demos/tree/master/examples

## NCollection
Creo que podrían ser innecesarios. Parece que es mejor usar arrays o secuencias de Nim.
## HANDLES
In line 60, we create a so-called Handle to an array. What are they good for? If you really want to pass around arrays between functions, but you are not allowed to pass them by value, you have another choice: use pointers instead! But the usage of raw pointers comes with its own problems: you have to decide when it gets deleted, who is responsible for deleting it, you have to take care that you don’t try to access already deleted pointers, etc… That’s why OpenCASCADE uses the nice concept of Handles, a.k.a. smart pointers (or shared_ptr-s more or less for Boost or C++11 users). Handles can be used just like ordinary pointers, with a very important difference that you don’t have to worry too much about deleting them or thinking about who owns them. They take care of their own reference counting, and when there is no more object referring to them, they just simply get destroyed. Of course, containers are not the only things that can be operated on by Handles: actually, in the higher-level packages many objects use them.

## TODO
Take a look at [pyocct.pdf](https://buildmedia.readthedocs.org/media/pdf/pyocct/latest/pyocct.pdf)

pyOcct seem to cover:
- AIS
- BRepAlgoAPI
- BRepPrimAPI
- Font
- Geom
- Graphic3d
- InteractiveObject
- OpenGl
- Select3d
- ShapeAnalysis
- Standard
- TColgp
- TDocStd
- TopoDS
- V3d
- XCAFDoc