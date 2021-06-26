# /usr/include/opencascade/BRep_GCurve.hxx --> occt/tkBRep/brep/BRep_GCurve.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepgcurve = "/usr/include/opencascade/BRep_GCurve.hxx"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_GCurve"
discard "forward decl of BRep_GCurve"
type
  HandleBRepGCurve* = Handle[BRepGCurve]
  BRepGCurve* {.importcpp: "BRep_GCurve", header: headerBrepgcurve, bycopy.} = object of BRepCurveRepresentation


proc setRange*(this: var BRepGCurve; first: StandardReal; last: StandardReal) {.
    importcpp: "SetRange", header: headerBrepgcurve.}
proc range*(this: BRepGCurve; first: var StandardReal; last: var StandardReal) {.
    noSideEffect, importcpp: "Range", header: headerBrepgcurve.}
proc first*(this: BRepGCurve): StandardReal {.noSideEffect, importcpp: "First",
    header: headerBrepgcurve.}
proc last*(this: BRepGCurve): StandardReal {.noSideEffect, importcpp: "Last",
    header: headerBrepgcurve.}
proc first*(this: var BRepGCurve; f: StandardReal) {.importcpp: "First",
    header: headerBrepgcurve.}
proc last*(this: var BRepGCurve; L: StandardReal) {.importcpp: "Last",
    header: headerBrepgcurve.}
proc d0*(this: BRepGCurve; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: headerBrepgcurve.}
proc update*(this: var BRepGCurve) {.importcpp: "Update", header: headerBrepgcurve.}
proc dumpJson*(this: BRepGCurve; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBrepgcurve.}
type
  BRepGCurvebaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_GCurve::get_type_name(@)",
                            header: headerBrepgcurve.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_GCurve::get_type_descriptor(@)", header: headerBrepgcurve.}
proc dynamicType*(this: BRepGCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBrepgcurve.}