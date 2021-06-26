# /usr/include/opencascade/BRep_PolygonOnClosedTriangulation.hxx --> occt/tkBRep/brep/BRep_PolygonOnClosedTriangulation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppolygononclosedtriangulation = "/usr/include/opencascade/BRep_PolygonOnClosedTriangulation.hxx"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnClosedTriangulation"
discard "forward decl of BRep_PolygonOnClosedTriangulation"
type
  HandleBRepPolygonOnClosedTriangulation* = Handle[
      BRepPolygonOnClosedTriangulation]
  BRepPolygonOnClosedTriangulation* {.importcpp: "BRep_PolygonOnClosedTriangulation", header: headerBreppolygononclosedtriangulation,
                                     bycopy.} = object of BRepPolygonOnTriangulation


proc constructBRepPolygonOnClosedTriangulation*(
    p1: Handle[PolyPolygonOnTriangulation];
    p2: Handle[PolyPolygonOnTriangulation]; tr: Handle[PolyTriangulation];
    L: TopLocLocation): BRepPolygonOnClosedTriangulation {.constructor,
    importcpp: "BRep_PolygonOnClosedTriangulation(@)",
    header: headerBreppolygononclosedtriangulation.}
proc isPolygonOnClosedTriangulation*(this: BRepPolygonOnClosedTriangulation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedTriangulation",
    header: headerBreppolygononclosedtriangulation.}
proc polygonOnTriangulation2*(this: var BRepPolygonOnClosedTriangulation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation2",
    header: headerBreppolygononclosedtriangulation.}
proc polygonOnTriangulation2*(this: BRepPolygonOnClosedTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation2",
                                 header: headerBreppolygononclosedtriangulation.}
proc copy*(this: BRepPolygonOnClosedTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBreppolygononclosedtriangulation.}
proc dumpJson*(this: BRepPolygonOnClosedTriangulation;
              theOStream: var StandardOStream; theDepth: StandardInteger = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: headerBreppolygononclosedtriangulation.}
type
  BRepPolygonOnClosedTriangulationbaseType* = BRepPolygonOnTriangulation

proc getTypeName*(): cstring {.importcpp: "BRep_PolygonOnClosedTriangulation::get_type_name(@)",
                            header: headerBreppolygononclosedtriangulation.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PolygonOnClosedTriangulation::get_type_descriptor(@)",
    header: headerBreppolygononclosedtriangulation.}
proc dynamicType*(this: BRepPolygonOnClosedTriangulation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: headerBreppolygononclosedtriangulation.}