{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel", passC:"-I/usr/include/opencascade" .}

import brepprim_types
export brepprim_types

include "BRepPrim_GWedge.nim"
include "BRepPrim_Builder.nim"
include "BRepPrim_OneAxis.nim"
#include "BRepPrim_Revolution.nim"
include "BRepPrim_Torus.nim"
include "BRepPrim_Cone.nim"
include "BRepPrim_Sphere.nim"
include "BRepPrim_Cylinder.nim"
#include "BRepPrim_FaceBuilder.nim"
include "BRepPrim_Wedge.nim"
