# /usr/include/opencascade/BRep_CurveOn2Surfaces.hxx --> occt/tkBRep/brep/BRep_CurveOn2Surfaces.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepcurveon2surfaces = "/usr/include/opencascade/BRep_CurveOn2Surfaces.hxx"
discard "forward decl of Geom_Surface"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOn2Surfaces"
discard "forward decl of BRep_CurveOn2Surfaces"
type
  HandleBRepCurveOn2Surfaces* = Handle[BRepCurveOn2Surfaces]
  BRepCurveOn2Surfaces* {.importcpp: "BRep_CurveOn2Surfaces",
                         header: headerBrepcurveon2surfaces, bycopy.} = object of BRepCurveRepresentation


proc constructBRepCurveOn2Surfaces*(s1: Handle[GeomSurface];
                                   s2: Handle[GeomSurface]; l1: TopLocLocation;
                                   l2: TopLocLocation; c: GeomAbsShape): BRepCurveOn2Surfaces {.
    constructor, importcpp: "BRep_CurveOn2Surfaces(@)",
    header: headerBrepcurveon2surfaces.}
proc isRegularity*(this: BRepCurveOn2Surfaces): StandardBoolean {.noSideEffect,
    importcpp: "IsRegularity", header: headerBrepcurveon2surfaces.}
proc isRegularity*(this: BRepCurveOn2Surfaces; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsRegularity", header: headerBrepcurveon2surfaces.}
proc d0*(this: BRepCurveOn2Surfaces; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: headerBrepcurveon2surfaces.}
proc surface*(this: BRepCurveOn2Surfaces): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: headerBrepcurveon2surfaces.}
proc surface2*(this: BRepCurveOn2Surfaces): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface2", header: headerBrepcurveon2surfaces.}
proc location2*(this: BRepCurveOn2Surfaces): TopLocLocation {.noSideEffect,
    importcpp: "Location2", header: headerBrepcurveon2surfaces.}
proc continuity*(this: BRepCurveOn2Surfaces): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: headerBrepcurveon2surfaces.}
proc continuity*(this: var BRepCurveOn2Surfaces; c: GeomAbsShape) {.
    importcpp: "Continuity", header: headerBrepcurveon2surfaces.}
proc copy*(this: BRepCurveOn2Surfaces): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBrepcurveon2surfaces.}
proc dumpJson*(this: BRepCurveOn2Surfaces; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBrepcurveon2surfaces.}
type
  BRepCurveOn2SurfacesbaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_CurveOn2Surfaces::get_type_name(@)",
                            header: headerBrepcurveon2surfaces.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_CurveOn2Surfaces::get_type_descriptor(@)",
    header: headerBrepcurveon2surfaces.}
proc dynamicType*(this: BRepCurveOn2Surfaces): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBrepcurveon2surfaces.}