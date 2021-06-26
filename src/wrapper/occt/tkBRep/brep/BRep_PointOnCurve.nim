# /usr/include/opencascade/BRep_PointOnCurve.hxx --> occt/tkBRep/brep/BRep_PointOnCurve.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppointoncurve = "/usr/include/opencascade/BRep_PointOnCurve.hxx"
discard "forward decl of Geom_Curve"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnCurve"
discard "forward decl of BRep_PointOnCurve"
type
  HandleBRepPointOnCurve* = Handle[BRepPointOnCurve]
  BRepPointOnCurve* {.importcpp: "BRep_PointOnCurve",
                     header: headerBreppointoncurve, bycopy.} = object of BRepPointRepresentation


proc constructBRepPointOnCurve*(p: StandardReal; c: Handle[GeomCurve];
                               L: TopLocLocation): BRepPointOnCurve {.constructor,
    importcpp: "BRep_PointOnCurve(@)", header: headerBreppointoncurve.}
proc isPointOnCurve*(this: BRepPointOnCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnCurve", header: headerBreppointoncurve.}
proc isPointOnCurve*(this: BRepPointOnCurve; c: Handle[GeomCurve]; L: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsPointOnCurve", header: headerBreppointoncurve.}
proc curve*(this: BRepPointOnCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: headerBreppointoncurve.}
proc curve*(this: var BRepPointOnCurve; c: Handle[GeomCurve]) {.importcpp: "Curve",
    header: headerBreppointoncurve.}
proc dumpJson*(this: BRepPointOnCurve; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppointoncurve.}
type
  BRepPointOnCurvebaseType* = BRepPointRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_PointOnCurve::get_type_name(@)",
                            header: headerBreppointoncurve.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointOnCurve::get_type_descriptor(@)",
    header: headerBreppointoncurve.}
proc dynamicType*(this: BRepPointOnCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreppointoncurve.}