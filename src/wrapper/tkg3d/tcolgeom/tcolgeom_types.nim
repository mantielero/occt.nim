# PROVIDES:
# DEPENDS:  NCollectionArray1[Handle[GeomBezierCurve]]  NCollectionArray1[Handle[GeomBSplineCurve]]  NCollectionArray1[Handle[GeomCurve]]  NCollectionArray1[Handle[GeomSurface]]  NCollectionArray2[Handle[GeomBezierSurface]]  NCollectionArray2[Handle[GeomSurface]]  NCollectionSequence[Handle[GeomBoundedCurve]]  NCollectionSequence[Handle[GeomCurve]]  NCollectionSequence[Handle[GeomSurface]] TColGeomArray1OfBezierCurve TColGeomArray1OfBSplineCurve TColGeomArray1OfCurve TColGeomArray1OfSurface TColGeomArray2OfSurface TColGeomSequenceOfBoundedCurve TColGeomSequenceOfCurve

import tkg3d/tcolgeom/tcolgeom_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  TColGeomArray1OfBezierCurve* = NCollectionArray1[Handle[GeomBezierCurve]]

  TColGeomArray1OfBSplineCurve* = NCollectionArray1[Handle[GeomBSplineCurve]]

  TColGeomArray1OfCurve* = NCollectionArray1[Handle[GeomCurve]]

  TColGeomArray1OfSurface* = NCollectionArray1[Handle[GeomSurface]]

  TColGeomArray2OfBezierSurface* = NCollectionArray2[Handle[GeomBezierSurface]]

  TColGeomArray2OfSurface* = NCollectionArray2[Handle[GeomSurface]]

  TColGeomSequenceOfBoundedCurve* = NCollectionSequence[Handle[GeomBoundedCurve]]

  TColGeomSequenceOfCurve* = NCollectionSequence[Handle[GeomCurve]]

  TColGeomSequenceOfSurface* = NCollectionSequence[Handle[GeomSurface]]

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

                                    bycopy.} = object of TColGeomSequenceOfBoundedCurve
  TColGeomHSequenceOfCurve* {.importcpp: "TColGeom_HSequenceOfCurve",
                             header: "TColGeom_HSequenceOfCurve.hxx", bycopy.} = object of TColGeomSequenceOfCurve


