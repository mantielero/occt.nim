# Introduction
This approach used `c2nim`.

The way of working is trying to process each header:
```bash
c2nim --cpp --header --out:gp_Pnt.nim occt.c2nim /usr/include/opencascade/gp_Pnt.hxx
```
We can inspect `gp_Pnt.nim` content to see if it is satisfying.

It is also interesting to execute:

```bash
c2nim --cpp --header --debug --strict --out:gp_Pnt.nim occt.c2nim /usr/include/opencascade/gp_Pnt.hxx
```

Modify the file `occt.c2nim` until we have a working wrapper.


## Process
1. gp
2. Standard
3. Geom
4. GC


# Libraries (toolkits)
TKBinL
TKBin
TKBinTObj
TKBinXCAF
TKBool
TKBO
TKBRep
TKCAF
TKCDF
TKDCAF
TKDraw
TKernel
TKFeat
TKFillet
TKG2d
TKG3d
TKGeomAlgo
TKGeomBase
TKHLR
TKIGES
TKIVtkDraw
TKIVtk
TKLCAF
TKMath
TKMesh
TKMeshVS
TKOffset
TKOpenGl
TKPrim
TKQADraw
TKRWMesh
TKService
TKShHealing
TKStdL
TKStd
TKSTEP209
TKSTEPAttr
TKSTEPBase
TKSTEP
TKSTL
TKTObjDRAW
TKTObj
TKTopAlgo
TKTopTest
TKV3d
TKVCAF
TKViewerTest
TKVRML
TKXCAF
TKXDEDRAW
TKXDEIGES
TKXDESTEP
TKXMesh
TKXmlL
TKXml
TKXmlTObj
TKXmlXCAF
TKXSBase
TKXSDRAW
