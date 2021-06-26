# /usr/include/opencascade/BRep_PolygonOnClosedSurface.hxx --> occt/brep/BRep_PolygonOnClosedSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppolygononclosedsurface = "/usr/include/opencascade/BRep_PolygonOnClosedSurface.hxx"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnClosedSurface"
discard "forward decl of BRep_PolygonOnClosedSurface"
type
  HandleBRepPolygonOnClosedSurface* = Handle[BRepPolygonOnClosedSurface]
  BRepPolygonOnClosedSurface* {.importcpp: "BRep_PolygonOnClosedSurface",
                               header: headerBreppolygononclosedsurface, bycopy.} = object of BRepPolygonOnSurface


proc constructBRepPolygonOnClosedSurface*(p1: Handle[PolyPolygon2D];
    p2: Handle[PolyPolygon2D]; s: Handle[GeomSurface]; L: TopLocLocation): BRepPolygonOnClosedSurface {.
    constructor, importcpp: "BRep_PolygonOnClosedSurface(@)",
    header: headerBreppolygononclosedsurface.}
proc isPolygonOnClosedSurface*(this: BRepPolygonOnClosedSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedSurface",
    header: headerBreppolygononclosedsurface.}
proc polygon2*(this: BRepPolygonOnClosedSurface): Handle[PolyPolygon2D] {.
    noSideEffect, importcpp: "Polygon2", header: headerBreppolygononclosedsurface.}
proc polygon2*(this: var BRepPolygonOnClosedSurface; p: Handle[PolyPolygon2D]) {.
    importcpp: "Polygon2", header: headerBreppolygononclosedsurface.}
proc copy*(this: BRepPolygonOnClosedSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBreppolygononclosedsurface.}
proc dumpJson*(this: BRepPolygonOnClosedSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppolygononclosedsurface.}
type
  BRepPolygonOnClosedSurfacebaseType* = BRepPolygonOnSurface

proc getTypeName*(): cstring {.importcpp: "BRep_PolygonOnClosedSurface::get_type_name(@)",
                            header: headerBreppolygononclosedsurface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PolygonOnClosedSurface::get_type_descriptor(@)",
    header: headerBreppolygononclosedsurface.}
proc dynamicType*(this: BRepPolygonOnClosedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: headerBreppolygononclosedsurface.}