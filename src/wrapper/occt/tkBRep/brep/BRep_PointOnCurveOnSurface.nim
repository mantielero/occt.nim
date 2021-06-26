# /usr/include/opencascade/BRep_PointOnCurveOnSurface.hxx --> occt/tkBRep/brep/BRep_PointOnCurveOnSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppointoncurveonsurface = "/usr/include/opencascade/BRep_PointOnCurveOnSurface.hxx"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnCurveOnSurface"
discard "forward decl of BRep_PointOnCurveOnSurface"
type
  HandleBRepPointOnCurveOnSurface* = Handle[BRepPointOnCurveOnSurface]
  BRepPointOnCurveOnSurface* {.importcpp: "BRep_PointOnCurveOnSurface",
                              header: headerBreppointoncurveonsurface, bycopy.} = object of BRepPointsOnSurface


proc constructBRepPointOnCurveOnSurface*(p: StandardReal; c: Handle[Geom2dCurve];
                                        s: Handle[GeomSurface]; L: TopLocLocation): BRepPointOnCurveOnSurface {.
    constructor, importcpp: "BRep_PointOnCurveOnSurface(@)",
    header: headerBreppointoncurveonsurface.}
proc isPointOnCurveOnSurface*(this: BRepPointOnCurveOnSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsPointOnCurveOnSurface",
    header: headerBreppointoncurveonsurface.}
proc isPointOnCurveOnSurface*(this: BRepPointOnCurveOnSurface;
                             pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                             L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: headerBreppointoncurveonsurface.}
proc pCurve*(this: BRepPointOnCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: headerBreppointoncurveonsurface.}
proc pCurve*(this: var BRepPointOnCurveOnSurface; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve", header: headerBreppointoncurveonsurface.}
proc dumpJson*(this: BRepPointOnCurveOnSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppointoncurveonsurface.}
type
  BRepPointOnCurveOnSurfacebaseType* = BRepPointsOnSurface

proc getTypeName*(): cstring {.importcpp: "BRep_PointOnCurveOnSurface::get_type_name(@)",
                            header: headerBreppointoncurveonsurface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointOnCurveOnSurface::get_type_descriptor(@)",
    header: headerBreppointoncurveonsurface.}
proc dynamicType*(this: BRepPointOnCurveOnSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerBreppointoncurveonsurface.}