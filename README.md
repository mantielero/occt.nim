# occt
OpenCascade nim wrapper

## OpenCascade overview
OpenCascade is organized in different [modules](https://dev.opencascade.org/doc/refman/html/index.html) (alphabetic order):
- [ApplicationFramework](https://dev.opencascade.org/doc/refman/html/module_applicationframework.html)
- [DataExchange](https://dev.opencascade.org/doc/refman/html/module_dataexchange.html)
- [Draw](https://dev.opencascade.org/doc/refman/html/module_draw.html)
- [FoundationClasses](https://dev.opencascade.org/doc/refman/html/module_foundationclasses.html)
- [ModelingAlgorithms](https://dev.opencascade.org/doc/refman/html/module_modelingalgorithms.html)
- [ModelingData](https://dev.opencascade.org/doc/refman/html/module_modelingdata.html)
- [Visualization](https://dev.opencascade.org/doc/refman/html/module_visualization.html)

Each module contain a number of toolkits (TK). For example:
- [FoundationClasses](https://dev.opencascade.org/doc/refman/html/module_foundationclasses.html)
  - [tkernel](https://dev.opencascade.org/doc/refman/html/toolkit_tkernel.html)
  - [tkmath](https://dev.opencascade.org/doc/refman/html/toolkit_tkmath.html)

Each toolkit contains a number of packages as seen for [tkernel](https://dev.opencascade.org/doc/refman/html/toolkit_tkernel.html).

## Wrapping process
In order to quickly play with the code, the shorter path is using [cinterop](https://github.com/n0bra1n3r/cinterop). In order to create proper bindings, it is better to use [c2nim](https://github.com/nim-lang/c2nim).

### Example: [Standard package](https://dev.opencascade.org/doc/refman/html/package_standard.html)
There are cases where the bindings will be created without any issue:
```
$ c2nim --cpp --header --strict --out:standard.nim /usr/include/opencascade/Standard.hxx
/usr/include/opencascade/Standard.hxx(94, 1) Warning: comment ' _Standard_HeaderFile' ignored [CommentXIgnored]
Hint: operation successful (94 lines compiled; 1 millisecond, 24 microseconds, and 983 nanoseconds sec total; 3.012MiB; ) [SuccessX]
```

But this doesn't mean that this is what you want/need. By inspecting the file, we see that there are plenty of `Standard_EXPORT`, macros that have not been transformed (like `DEFINE_STANDARD_ALLOC`), ... Besides, we might be interested in the type, but not in the method. So we might need to pre-process or post-process the header.

#### Dealing with macros
We can find where is defined the `DEFINE_STANDARD_ALLOC`:
```bash
$ grep "define DEFINE_STANDARD_ALLOC" /usr/include/opencascade/*.hxx
```
It is defined in `Standard_DefineAlloc.hxx`.

We can create a file where we define what we do with the macro. For instance: 
- Option 1: we can use exactly the same specification:
  **occt.c2nim**
```
#ifdef C2NIM
# define DEFINE_STANDARD_ALLOC                                         \
  void* operator new (size_t theSize)                                  \
  {                                                                    \
    return Standard::Allocate (theSize);                               \
  }                                                                    \
  void  operator delete (void* theAddress)                             \
  {                                                                    \
    Standard::Free (theAddress);                                       \
  }                                                                    \
  DEFINE_STANDARD_ALLOC_ARRAY                                          \
  DEFINE_STANDARD_ALLOC_PLACEMENT
#endif
```
- Option 2: we don't care about the bodies; we are only interested in the headers
  **occt.c2nim**
```
#ifdef C2NIM
# define DEFINE_STANDARD_ALLOC               \
  void* operator new (size_t theSize);       \
  void  operator delete (void* theAddress);  \
  DEFINE_STANDARD_ALLOC_ARRAY                \
  DEFINE_STANDARD_ALLOC_PLACEMENT
#endif
```
- Option 3: we don't plan to use the functions that the macros are introducing:
  **occt.c2nim**
```
#ifdef C2NIM
# define DEFINE_STANDARD_ALLOC
#endif
```

#### Standard_EXPORT
It is defined in `Standard_Macro.hxx`. We can safely add:
```
#ifdef C2NIM
# define DEFINE_STANDARD_ALLOC
# define Standard_EXPORT
#endif
```

#### Generate the bindings
In this case, we would execute:
```bash
$ c2nim --cpp --header --strict --out:standard.nim occt.c2nim /usr/include/opencascade/Standard.hxx
```
and we will get a better binding.

And so on with: `Standard_Size`, `Standard_Address``.

## Overview
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

```
from OCCT.BRep import BRep_Builder
from OCCT.BRepTools import BRepTools
from OCCT.IGESControl import IGESControl_Reader, IGESControl_Writer
from OCCT.STEPControl import (STEPControl_Reader, STEPControl_Writer,
                              STEPControl_AsIs)
from OCCT.TopoDS import TopoDS_Shape
```

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