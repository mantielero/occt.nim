# /usr/include/opencascade/BRep_TFace.hxx --> occt/tkBRep/brep/BRep_TFace.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreptface = "/usr/include/opencascade/BRep_TFace.hxx"
discard "forward decl of Geom_Surface"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TFace"
discard "forward decl of BRep_TFace"
type
  HandleBRepTFace* = Handle[BRepTFace]
  BRepTFace* {.importcpp: "BRep_TFace", header: headerBreptface, bycopy.} = object of TopoDS_TFace


proc constructBRepTFace*(): BRepTFace {.constructor, importcpp: "BRep_TFace(@)",
                                     header: headerBreptface.}
proc surface*(this: BRepTFace): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: headerBreptface.}
proc triangulation*(this: BRepTFace): Handle[PolyTriangulation] {.noSideEffect,
    importcpp: "Triangulation", header: headerBreptface.}
proc location*(this: BRepTFace): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: headerBreptface.}
proc tolerance*(this: BRepTFace): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: headerBreptface.}
proc surface*(this: var BRepTFace; s: Handle[GeomSurface]) {.importcpp: "Surface",
    header: headerBreptface.}
proc triangulation*(this: var BRepTFace; t: Handle[PolyTriangulation]) {.
    importcpp: "Triangulation", header: headerBreptface.}
proc location*(this: var BRepTFace; L: TopLocLocation) {.importcpp: "Location",
    header: headerBreptface.}
proc tolerance*(this: var BRepTFace; t: StandardReal) {.importcpp: "Tolerance",
    header: headerBreptface.}
proc naturalRestriction*(this: BRepTFace): StandardBoolean {.noSideEffect,
    importcpp: "NaturalRestriction", header: headerBreptface.}
proc naturalRestriction*(this: var BRepTFace; n: StandardBoolean) {.
    importcpp: "NaturalRestriction", header: headerBreptface.}
proc emptyCopy*(this: BRepTFace): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerBreptface.}
proc dumpJson*(this: BRepTFace; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreptface.}
type
  BRepTFacebaseType* = TopoDS_TFace

proc getTypeName*(): cstring {.importcpp: "BRep_TFace::get_type_name(@)",
                            header: headerBreptface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_TFace::get_type_descriptor(@)", header: headerBreptface.}
proc dynamicType*(this: BRepTFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreptface.}