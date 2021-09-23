# /usr/include/opencascade/BRep_CurveOnClosedSurface.hxx --> occt/brep/BRep_CurveOnClosedSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepcurveonclosedsurface = "/usr/include/opencascade/BRep_CurveOnClosedSurface.hxx"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt2d"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOnClosedSurface"
discard "forward decl of BRep_CurveOnClosedSurface"
type
  HandleBRepCurveOnClosedSurface* = Handle[BRepCurveOnClosedSurface]
  BRepCurveOnClosedSurface* {.importcpp: "BRep_CurveOnClosedSurface",
                             header: headerBrepcurveonclosedsurface, bycopy.} = object of BRepCurveOnSurface


proc constructBRepCurveOnClosedSurface*(pc1: Handle[Geom2dCurve];
                                       pc2: Handle[Geom2dCurve];
                                       s: Handle[GeomSurface]; L: TopLocLocation;
                                       c: GeomAbsShape): BRepCurveOnClosedSurface {.
    constructor, importcpp: "BRep_CurveOnClosedSurface(@)",
    header: headerBrepcurveonclosedsurface.}
proc setUVPoints2*(this: var BRepCurveOnClosedSurface; p1: GpPnt2d; p2: GpPnt2d) {.
    importcpp: "SetUVPoints2", header: headerBrepcurveonclosedsurface.}
proc uVPoints2*(this: BRepCurveOnClosedSurface; p1: var GpPnt2d; p2: var GpPnt2d) {.
    noSideEffect, importcpp: "UVPoints2", header: headerBrepcurveonclosedsurface.}
proc isCurveOnClosedSurface*(this: BRepCurveOnClosedSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsCurveOnClosedSurface",
    header: headerBrepcurveonclosedsurface.}
proc isRegularity*(this: BRepCurveOnClosedSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsRegularity", header: headerBrepcurveonclosedsurface.}
proc isRegularity*(this: BRepCurveOnClosedSurface; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsRegularity", header: headerBrepcurveonclosedsurface.}
proc pCurve2*(this: BRepCurveOnClosedSurface): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve2", header: headerBrepcurveonclosedsurface.}
proc surface2*(this: BRepCurveOnClosedSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface2", header: headerBrepcurveonclosedsurface.}
proc location2*(this: BRepCurveOnClosedSurface): TopLocLocation {.noSideEffect,
    importcpp: "Location2", header: headerBrepcurveonclosedsurface.}
proc continuity*(this: BRepCurveOnClosedSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: headerBrepcurveonclosedsurface.}
proc continuity*(this: var BRepCurveOnClosedSurface; c: GeomAbsShape) {.
    importcpp: "Continuity", header: headerBrepcurveonclosedsurface.}
proc pCurve2*(this: var BRepCurveOnClosedSurface; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve2", header: headerBrepcurveonclosedsurface.}
proc copy*(this: BRepCurveOnClosedSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBrepcurveonclosedsurface.}
proc update*(this: var BRepCurveOnClosedSurface) {.importcpp: "Update",
    header: headerBrepcurveonclosedsurface.}
proc dumpJson*(this: BRepCurveOnClosedSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBrepcurveonclosedsurface.}
type
  BRepCurveOnClosedSurfacebaseType* = BRepCurveOnSurface

proc getTypeName*(): cstring {.importcpp: "BRep_CurveOnClosedSurface::get_type_name(@)",
                            header: headerBrepcurveonclosedsurface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_CurveOnClosedSurface::get_type_descriptor(@)",
    header: headerBrepcurveonclosedsurface.}
proc dynamicType*(this: BRepCurveOnClosedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerBrepcurveonclosedsurface.}