# /usr/include/opencascade/BRep_PointOnSurface.hxx --> occt/tkBRep/brep/BRep_PointOnSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppointonsurface = "/usr/include/opencascade/BRep_PointOnSurface.hxx"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnSurface"
discard "forward decl of BRep_PointOnSurface"
type
  HandleBRepPointOnSurface* = Handle[BRepPointOnSurface]
  BRepPointOnSurface* {.importcpp: "BRep_PointOnSurface",
                       header: headerBreppointonsurface, bycopy.} = object of BRepPointsOnSurface


proc constructBRepPointOnSurface*(p1: StandardReal; p2: StandardReal;
                                 s: Handle[GeomSurface]; L: TopLocLocation): BRepPointOnSurface {.
    constructor, importcpp: "BRep_PointOnSurface(@)",
    header: headerBreppointonsurface.}
proc isPointOnSurface*(this: BRepPointOnSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnSurface", header: headerBreppointonsurface.}
proc isPointOnSurface*(this: BRepPointOnSurface; s: Handle[GeomSurface];
                      L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnSurface", header: headerBreppointonsurface.}
proc parameter2*(this: BRepPointOnSurface): StandardReal {.noSideEffect,
    importcpp: "Parameter2", header: headerBreppointonsurface.}
proc parameter2*(this: var BRepPointOnSurface; p: StandardReal) {.
    importcpp: "Parameter2", header: headerBreppointonsurface.}
type
  BRepPointOnSurfacebaseType* = BRepPointsOnSurface

proc getTypeName*(): cstring {.importcpp: "BRep_PointOnSurface::get_type_name(@)",
                            header: headerBreppointonsurface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointOnSurface::get_type_descriptor(@)",
    header: headerBreppointonsurface.}
proc dynamicType*(this: BRepPointOnSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreppointonsurface.}