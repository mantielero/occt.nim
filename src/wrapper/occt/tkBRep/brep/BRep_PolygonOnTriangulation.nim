# /usr/include/opencascade/BRep_PolygonOnTriangulation.hxx --> occt/tkBRep/brep/BRep_PolygonOnTriangulation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppolygonontriangulation = "/usr/include/opencascade/BRep_PolygonOnTriangulation.hxx"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnTriangulation"
discard "forward decl of BRep_PolygonOnTriangulation"
type
  HandleBRepPolygonOnTriangulation* = Handle[BRepPolygonOnTriangulation]
  BRepPolygonOnTriangulation* {.importcpp: "BRep_PolygonOnTriangulation",
                               header: headerBreppolygonontriangulation, bycopy.} = object of BRepCurveRepresentation


proc constructBRepPolygonOnTriangulation*(p: Handle[PolyPolygonOnTriangulation];
    t: Handle[PolyTriangulation]; L: TopLocLocation): BRepPolygonOnTriangulation {.
    constructor, importcpp: "BRep_PolygonOnTriangulation(@)",
    header: headerBreppolygonontriangulation.}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: headerBreppolygonontriangulation.}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: headerBreppolygonontriangulation.}
proc polygonOnTriangulation*(this: var BRepPolygonOnTriangulation;
                            p: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation", header: headerBreppolygonontriangulation.}
proc triangulation*(this: BRepPolygonOnTriangulation): Handle[PolyTriangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: headerBreppolygonontriangulation.}
proc polygonOnTriangulation*(this: BRepPolygonOnTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation",
                                 header: headerBreppolygonontriangulation.}
proc copy*(this: BRepPolygonOnTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBreppolygonontriangulation.}
proc dumpJson*(this: BRepPolygonOnTriangulation; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppolygonontriangulation.}
type
  BRepPolygonOnTriangulationbaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_PolygonOnTriangulation::get_type_name(@)",
                            header: headerBreppolygonontriangulation.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PolygonOnTriangulation::get_type_descriptor(@)",
    header: headerBreppolygonontriangulation.}
proc dynamicType*(this: BRepPolygonOnTriangulation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: headerBreppolygonontriangulation.}