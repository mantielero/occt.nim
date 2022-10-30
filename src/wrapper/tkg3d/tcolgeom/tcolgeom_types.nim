# PROVIDES:
# DEPENDS: TColGeomArray1OfBezierCurve TColGeomArray1OfBSplineCurve TColGeomArray1OfCurve TColGeomArray1OfSurface TColGeomArray2OfSurface TColGeomSequenceOfBoundedCurve TColGeomSequenceOfCurve

import tkg3d/tcolgeom/tcolgeom_types
type
  TColGeomHArray1OfBezierCurve* {.importcpp: "TColGeom_HArray1OfBezierCurve",
                                 header: "TColGeom_HArray1OfBezierCurve.hxx",
                                 bycopy.} = object of TColGeomArray1OfBezierCurve



  TColGeomHArray1OfBSplineCurve* {.importcpp: "TColGeom_HArray1OfBSplineCurve",
                                  header: "TColGeom_HArray1OfBSplineCurve.hxx",
                                  bycopy.} = object of TColGeomArray1OfBSplineCurve



  TColGeomHArray1OfCurve* {.importcpp: "TColGeom_HArray1OfCurve",
                           header: "TColGeom_HArray1OfCurve.hxx", bycopy.} = object of TColGeomArray1OfCurve



  TColGeomHArray1OfSurface* {.importcpp: "TColGeom_HArray1OfSurface",
                             header: "TColGeom_HArray1OfSurface.hxx", bycopy.} = object of TColGeomArray1OfSurface



  TColGeomHArray2OfSurface* {.importcpp: "TColGeom_HArray2OfSurface",
                             header: "TColGeom_HArray2OfSurface.hxx", bycopy.} = object of TColGeomArray2OfSurface



  TColGeomHSequenceOfBoundedCurve* {.importcpp: "TColGeom_HSequenceOfBoundedCurve", header: "TColGeom_HSequenceOfBoundedCurve.hxx",
                                    bycopy.} = object of TColGeomSequenceOfBoundedCurve

                                    bycopy.} = object of TColGeomSequenceOfBoundedCurve



  TColGeomHSequenceOfCurve* {.importcpp: "TColGeom_HSequenceOfCurve",
                             header: "TColGeom_HSequenceOfCurve.hxx", bycopy.} = object of TColGeomSequenceOfCurve






