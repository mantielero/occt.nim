{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel", passC:"-I/usr/include/opencascade" .}

type
  BRepPrim_Direction* {.size: sizeof(cint), importcpp: "BRepPrim_Direction",
                       header: "BRepPrim_Direction.hxx".} = enum
    BRepPrim_XMin, BRepPrim_XMax, BRepPrim_YMin, BRepPrim_YMax, BRepPrim_ZMin,
    BRepPrim_ZMax

  BRepPrim_GWedge* {.header: "BRepPrim_GWedge.hxx", importcpp: "BRepPrim_GWedge", byref.} = object
  ## A wedge is defined by :

  BRepPrim_Builder* {.header: "BRepPrim_Builder.hxx", importcpp: "BRepPrim_Builder", byref.} = object
  ## implements the abstract Builder with the BRep Builder

  BRepPrim_OneAxis* {.header: "BRepPrim_OneAxis.hxx", importcpp: "BRepPrim_OneAxis", byref.} = object
  ## Algorithm to build primitives with one axis of revolution.

  BRepPrim_Revolution* {.header: "BRepPrim_Revolution.hxx", importcpp: "BRepPrim_Revolution", byref.} = object
  ## Implement the OneAxis algoritm for a revolution surface.

  BRepPrim_Torus* {.header: "BRepPrim_Torus.hxx", importcpp: "BRepPrim_Torus", byref.} = object
  ## Implements the torus primitive

  BRepPrim_Cone* {.header: "BRepPrim_Cone.hxx", importcpp: "BRepPrim_Cone", byref.} = object
  ## Implement the cone primitive.

  BRepPrim_Sphere* {.header: "BRepPrim_Sphere.hxx", importcpp: "BRepPrim_Sphere", byref.} = object
  ## Implements the sphere primitive

  BRepPrim_Cylinder* {.header: "BRepPrim_Cylinder.hxx", importcpp: "BRepPrim_Cylinder", byref.} = object
  ## Cylinder primitive.

  BRepPrim_FaceBuilder* {.header: "BRepPrim_FaceBuilder.hxx", importcpp: "BRepPrim_FaceBuilder", byref.} = object
  ## The FaceBuilder is an algorithm to build a BRep Face from a Geom
  ## Surface.

  BRepPrim_Wedge* {.header: "BRepPrim_Wedge.hxx", importcpp: "BRepPrim_Wedge", byref.} = object
  ## Provides constructors without Builders.

  #Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object

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
