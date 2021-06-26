# /usr/include/opencascade/BRepPrim_Builder.hxx --> occt/tkPrim/brepprim/BRepPrim_Builder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimbuilder = "/usr/include/opencascade/BRepPrim_Builder.hxx"
discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pln"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
type
  BRepPrimBuilder* {.importcpp: "BRepPrim_Builder", header: headerBrepprimbuilder,
                    bycopy.} = object


proc `new`*(this: var BRepPrimBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Builder::operator new", header: headerBrepprimbuilder.}
proc `delete`*(this: var BRepPrimBuilder; theAddress: pointer) {.
    importcpp: "BRepPrim_Builder::operator delete", header: headerBrepprimbuilder.}
proc `new[]`*(this: var BRepPrimBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Builder::operator new[]", header: headerBrepprimbuilder.}
proc `delete[]`*(this: var BRepPrimBuilder; theAddress: pointer) {.
    importcpp: "BRepPrim_Builder::operator delete[]",
    header: headerBrepprimbuilder.}
proc `new`*(this: var BRepPrimBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Builder::operator new", header: headerBrepprimbuilder.}
proc `delete`*(this: var BRepPrimBuilder; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Builder::operator delete", header: headerBrepprimbuilder.}
proc constructBRepPrimBuilder*(): BRepPrimBuilder {.constructor,
    importcpp: "BRepPrim_Builder(@)", header: headerBrepprimbuilder.}
proc constructBRepPrimBuilder*(b: BRepBuilder): BRepPrimBuilder {.constructor,
    importcpp: "BRepPrim_Builder(@)", header: headerBrepprimbuilder.}
proc builder*(this: BRepPrimBuilder): BRepBuilder {.noSideEffect,
    importcpp: "Builder", header: headerBrepprimbuilder.}
proc makeShell*(this: BRepPrimBuilder; s: var TopoDS_Shell) {.noSideEffect,
    importcpp: "MakeShell", header: headerBrepprimbuilder.}
proc makeFace*(this: BRepPrimBuilder; f: var TopoDS_Face; p: GpPln) {.noSideEffect,
    importcpp: "MakeFace", header: headerBrepprimbuilder.}
proc makeWire*(this: BRepPrimBuilder; w: var TopoDS_Wire) {.noSideEffect,
    importcpp: "MakeWire", header: headerBrepprimbuilder.}
proc makeDegeneratedEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge) {.noSideEffect,
    importcpp: "MakeDegeneratedEdge", header: headerBrepprimbuilder.}
proc makeEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge; L: GpLin) {.noSideEffect,
    importcpp: "MakeEdge", header: headerBrepprimbuilder.}
proc makeEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge; c: GpCirc) {.noSideEffect,
    importcpp: "MakeEdge", header: headerBrepprimbuilder.}
proc setPCurve*(this: BRepPrimBuilder; e: var TopoDS_Edge; f: TopoDS_Face; L: GpLin2d) {.
    noSideEffect, importcpp: "SetPCurve", header: headerBrepprimbuilder.}
proc setPCurve*(this: BRepPrimBuilder; e: var TopoDS_Edge; f: TopoDS_Face; l1: GpLin2d;
               l2: GpLin2d) {.noSideEffect, importcpp: "SetPCurve",
                            header: headerBrepprimbuilder.}
proc setPCurve*(this: BRepPrimBuilder; e: var TopoDS_Edge; f: TopoDS_Face; c: GpCirc2d) {.
    noSideEffect, importcpp: "SetPCurve", header: headerBrepprimbuilder.}
proc makeVertex*(this: BRepPrimBuilder; v: var TopoDS_Vertex; p: GpPnt) {.noSideEffect,
    importcpp: "MakeVertex", header: headerBrepprimbuilder.}
proc reverseFace*(this: BRepPrimBuilder; f: var TopoDS_Face) {.noSideEffect,
    importcpp: "ReverseFace", header: headerBrepprimbuilder.}
proc addEdgeVertex*(this: BRepPrimBuilder; e: var TopoDS_Edge; v: TopoDS_Vertex;
                   p: StandardReal; direct: StandardBoolean) {.noSideEffect,
    importcpp: "AddEdgeVertex", header: headerBrepprimbuilder.}
proc addEdgeVertex*(this: BRepPrimBuilder; e: var TopoDS_Edge; v: TopoDS_Vertex;
                   p1: StandardReal; p2: StandardReal) {.noSideEffect,
    importcpp: "AddEdgeVertex", header: headerBrepprimbuilder.}
proc setParameters*(this: BRepPrimBuilder; e: var TopoDS_Edge; v: TopoDS_Vertex;
                   p1: StandardReal; p2: StandardReal) {.noSideEffect,
    importcpp: "SetParameters", header: headerBrepprimbuilder.}
proc addWireEdge*(this: BRepPrimBuilder; w: var TopoDS_Wire; e: TopoDS_Edge;
                 direct: StandardBoolean) {.noSideEffect, importcpp: "AddWireEdge",
    header: headerBrepprimbuilder.}
proc addFaceWire*(this: BRepPrimBuilder; f: var TopoDS_Face; w: TopoDS_Wire) {.
    noSideEffect, importcpp: "AddFaceWire", header: headerBrepprimbuilder.}
proc addShellFace*(this: BRepPrimBuilder; sh: var TopoDS_Shell; f: TopoDS_Face) {.
    noSideEffect, importcpp: "AddShellFace", header: headerBrepprimbuilder.}
proc completeEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge) {.noSideEffect,
    importcpp: "CompleteEdge", header: headerBrepprimbuilder.}
proc completeWire*(this: BRepPrimBuilder; w: var TopoDS_Wire) {.noSideEffect,
    importcpp: "CompleteWire", header: headerBrepprimbuilder.}
proc completeFace*(this: BRepPrimBuilder; f: var TopoDS_Face) {.noSideEffect,
    importcpp: "CompleteFace", header: headerBrepprimbuilder.}
proc completeShell*(this: BRepPrimBuilder; s: var TopoDS_Shell) {.noSideEffect,
    importcpp: "CompleteShell", header: headerBrepprimbuilder.}