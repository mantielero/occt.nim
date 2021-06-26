# /usr/include/opencascade/BRep_Curve3D.hxx --> occt/tkBRep/brep/BRep_Curve3D.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepcurve3d = "/usr/include/opencascade/BRep_Curve3D.hxx"
discard "forward decl of Geom_Curve"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_Curve3D"
discard "forward decl of BRep_Curve3D"
type
  HandleBRepCurve3D* = Handle[BRepCurve3D]
  BRepCurve3D* {.importcpp: "BRep_Curve3D", header: headerBrepcurve3d, bycopy.} = object of BRepGCurve


proc constructBRepCurve3D*(c: Handle[GeomCurve]; L: TopLocLocation): BRepCurve3D {.
    constructor, importcpp: "BRep_Curve3D(@)", header: headerBrepcurve3d.}
proc d0*(this: BRepCurve3D; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: headerBrepcurve3d.}
proc isCurve3D*(this: BRepCurve3D): StandardBoolean {.noSideEffect,
    importcpp: "IsCurve3D", header: headerBrepcurve3d.}
proc curve3D*(this: BRepCurve3D): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve3D", header: headerBrepcurve3d.}
proc curve3D*(this: var BRepCurve3D; c: Handle[GeomCurve]) {.importcpp: "Curve3D",
    header: headerBrepcurve3d.}
proc copy*(this: BRepCurve3D): Handle[BRepCurveRepresentation] {.noSideEffect,
    importcpp: "Copy", header: headerBrepcurve3d.}
proc dumpJson*(this: BRepCurve3D; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBrepcurve3d.}
type
  BRepCurve3DbaseType* = BRepGCurve

proc getTypeName*(): cstring {.importcpp: "BRep_Curve3D::get_type_name(@)",
                            header: headerBrepcurve3d.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_Curve3D::get_type_descriptor(@)", header: headerBrepcurve3d.}
proc dynamicType*(this: BRepCurve3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBrepcurve3d.}