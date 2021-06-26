# /usr/include/opencascade/BRep_CurveOnSurface.hxx --> occt/brep/BRep_CurveOnSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepcurveonsurface = "/usr/include/opencascade/BRep_CurveOnSurface.hxx"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveOnSurface"
discard "forward decl of BRep_CurveOnSurface"
type
  HandleBRepCurveOnSurface* = Handle[BRepCurveOnSurface]
  BRepCurveOnSurface* {.importcpp: "BRep_CurveOnSurface",
                       header: headerBrepcurveonsurface, bycopy.} = object of BRepGCurve


proc constructBRepCurveOnSurface*(pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                 L: TopLocLocation): BRepCurveOnSurface {.
    constructor, importcpp: "BRep_CurveOnSurface(@)",
    header: headerBrepcurveonsurface.}
proc setUVPoints*(this: var BRepCurveOnSurface; p1: GpPnt2d; p2: GpPnt2d) {.
    importcpp: "SetUVPoints", header: headerBrepcurveonsurface.}
proc uVPoints*(this: BRepCurveOnSurface; p1: var GpPnt2d; p2: var GpPnt2d) {.
    noSideEffect, importcpp: "UVPoints", header: headerBrepcurveonsurface.}
proc d0*(this: BRepCurveOnSurface; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: headerBrepcurveonsurface.}
proc isCurveOnSurface*(this: BRepCurveOnSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: headerBrepcurveonsurface.}
proc isCurveOnSurface*(this: BRepCurveOnSurface; s: Handle[GeomSurface];
                      L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: headerBrepcurveonsurface.}
proc surface*(this: BRepCurveOnSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: headerBrepcurveonsurface.}
proc pCurve*(this: BRepCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: headerBrepcurveonsurface.}
proc pCurve*(this: var BRepCurveOnSurface; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve", header: headerBrepcurveonsurface.}
proc copy*(this: BRepCurveOnSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBrepcurveonsurface.}
proc update*(this: var BRepCurveOnSurface) {.importcpp: "Update",
    header: headerBrepcurveonsurface.}
proc dumpJson*(this: BRepCurveOnSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBrepcurveonsurface.}
type
  BRepCurveOnSurfacebaseType* = BRepGCurve

proc getTypeName*(): cstring {.importcpp: "BRep_CurveOnSurface::get_type_name(@)",
                            header: headerBrepcurveonsurface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_CurveOnSurface::get_type_descriptor(@)",
    header: headerBrepcurveonsurface.}
proc dynamicType*(this: BRepCurveOnSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBrepcurveonsurface.}