# /usr/include/opencascade/BRep_PolygonOnSurface.hxx --> occt/brep/BRep_PolygonOnSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppolygononsurface = "/usr/include/opencascade/BRep_PolygonOnSurface.hxx"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of Geom_Surface"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnSurface"
discard "forward decl of BRep_PolygonOnSurface"
type
  HandleBRepPolygonOnSurface* = Handle[BRepPolygonOnSurface]
  BRepPolygonOnSurface* {.importcpp: "BRep_PolygonOnSurface",
                         header: headerBreppolygononsurface, bycopy.} = object of BRepCurveRepresentation


proc constructBRepPolygonOnSurface*(p: Handle[PolyPolygon2D];
                                   s: Handle[GeomSurface]; L: TopLocLocation): BRepPolygonOnSurface {.
    constructor, importcpp: "BRep_PolygonOnSurface(@)",
    header: headerBreppolygononsurface.}
proc isPolygonOnSurface*(this: BRepPolygonOnSurface): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnSurface",
    header: headerBreppolygononsurface.}
proc isPolygonOnSurface*(this: BRepPolygonOnSurface; s: Handle[GeomSurface];
                        L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsPolygonOnSurface", header: headerBreppolygononsurface.}
proc surface*(this: BRepPolygonOnSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: headerBreppolygononsurface.}
proc polygon*(this: BRepPolygonOnSurface): Handle[PolyPolygon2D] {.noSideEffect,
    importcpp: "Polygon", header: headerBreppolygononsurface.}
proc polygon*(this: var BRepPolygonOnSurface; p: Handle[PolyPolygon2D]) {.
    importcpp: "Polygon", header: headerBreppolygononsurface.}
proc copy*(this: BRepPolygonOnSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBreppolygononsurface.}
proc dumpJson*(this: BRepPolygonOnSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppolygononsurface.}
type
  BRepPolygonOnSurfacebaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_PolygonOnSurface::get_type_name(@)",
                            header: headerBreppolygononsurface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PolygonOnSurface::get_type_descriptor(@)",
    header: headerBreppolygononsurface.}
proc dynamicType*(this: BRepPolygonOnSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreppolygononsurface.}