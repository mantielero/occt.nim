# /usr/include/opencascade/BRep_Polygon3D.hxx --> occt/brep/BRep_Polygon3D.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppolygon3d = "/usr/include/opencascade/BRep_Polygon3D.hxx"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_Polygon3D"
discard "forward decl of BRep_Polygon3D"
type
  HandleBRepPolygon3D* = Handle[BRepPolygon3D]
  BRepPolygon3D* {.importcpp: "BRep_Polygon3D", header: headerBreppolygon3d, bycopy.} = object of BRepCurveRepresentation


proc constructBRepPolygon3D*(p: Handle[PolyPolygon3D]; L: TopLocLocation): BRepPolygon3D {.
    constructor, importcpp: "BRep_Polygon3D(@)", header: headerBreppolygon3d.}
proc isPolygon3D*(this: BRepPolygon3D): StandardBoolean {.noSideEffect,
    importcpp: "IsPolygon3D", header: headerBreppolygon3d.}
proc polygon3D*(this: BRepPolygon3D): Handle[PolyPolygon3D] {.noSideEffect,
    importcpp: "Polygon3D", header: headerBreppolygon3d.}
proc polygon3D*(this: var BRepPolygon3D; p: Handle[PolyPolygon3D]) {.
    importcpp: "Polygon3D", header: headerBreppolygon3d.}
proc copy*(this: BRepPolygon3D): Handle[BRepCurveRepresentation] {.noSideEffect,
    importcpp: "Copy", header: headerBreppolygon3d.}
proc dumpJson*(this: BRepPolygon3D; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppolygon3d.}
type
  BRepPolygon3DbaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_Polygon3D::get_type_name(@)",
                            header: headerBreppolygon3d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_Polygon3D::get_type_descriptor(@)",
    header: headerBreppolygon3d.}
proc dynamicType*(this: BRepPolygon3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreppolygon3d.}