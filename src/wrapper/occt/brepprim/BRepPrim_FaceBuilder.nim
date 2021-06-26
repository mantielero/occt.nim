# /usr/include/opencascade/BRepPrim_FaceBuilder.hxx --> occt/brepprim/BRepPrim_FaceBuilder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimfacebuilder = "/usr/include/opencascade/BRepPrim_FaceBuilder.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRep_Builder"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepPrimFaceBuilder* {.importcpp: "BRepPrim_FaceBuilder",
                        header: headerBrepprimfacebuilder, bycopy.} = object


proc `new`*(this: var BRepPrimFaceBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_FaceBuilder::operator new",
    header: headerBrepprimfacebuilder.}
proc `delete`*(this: var BRepPrimFaceBuilder; theAddress: pointer) {.
    importcpp: "BRepPrim_FaceBuilder::operator delete",
    header: headerBrepprimfacebuilder.}
proc `new[]`*(this: var BRepPrimFaceBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_FaceBuilder::operator new[]",
    header: headerBrepprimfacebuilder.}
proc `delete[]`*(this: var BRepPrimFaceBuilder; theAddress: pointer) {.
    importcpp: "BRepPrim_FaceBuilder::operator delete[]",
    header: headerBrepprimfacebuilder.}
proc `new`*(this: var BRepPrimFaceBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_FaceBuilder::operator new",
    header: headerBrepprimfacebuilder.}
proc `delete`*(this: var BRepPrimFaceBuilder; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_FaceBuilder::operator delete",
    header: headerBrepprimfacebuilder.}
proc constructBRepPrimFaceBuilder*(): BRepPrimFaceBuilder {.constructor,
    importcpp: "BRepPrim_FaceBuilder(@)", header: headerBrepprimfacebuilder.}
proc constructBRepPrimFaceBuilder*(b: BRepBuilder; s: Handle[GeomSurface]): BRepPrimFaceBuilder {.
    constructor, importcpp: "BRepPrim_FaceBuilder(@)",
    header: headerBrepprimfacebuilder.}
proc constructBRepPrimFaceBuilder*(b: BRepBuilder; s: Handle[GeomSurface];
                                  uMin: StandardReal; uMax: StandardReal;
                                  vMin: StandardReal; vMax: StandardReal): BRepPrimFaceBuilder {.
    constructor, importcpp: "BRepPrim_FaceBuilder(@)",
    header: headerBrepprimfacebuilder.}
proc init*(this: var BRepPrimFaceBuilder; b: BRepBuilder; s: Handle[GeomSurface]) {.
    importcpp: "Init", header: headerBrepprimfacebuilder.}
proc init*(this: var BRepPrimFaceBuilder; b: BRepBuilder; s: Handle[GeomSurface];
          uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
          vMax: StandardReal) {.importcpp: "Init", header: headerBrepprimfacebuilder.}
proc face*(this: BRepPrimFaceBuilder): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: headerBrepprimfacebuilder.}
converter `topoDS_Face`*(this: var BRepPrimFaceBuilder): TopoDS_Face {.
    importcpp: "BRepPrim_FaceBuilder::operator TopoDS_Face",
    header: headerBrepprimfacebuilder.}
proc edge*(this: BRepPrimFaceBuilder; i: StandardInteger): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: headerBrepprimfacebuilder.}
proc vertex*(this: BRepPrimFaceBuilder; i: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: headerBrepprimfacebuilder.}