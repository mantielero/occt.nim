import brepprim_types

##  Created on: 1992-03-12
##  Created by: Philippe DAUTRY
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

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


proc newBRepPrimBuilder*(): BRepPrimBuilder {.cdecl, constructor,
    importcpp: "BRepPrim_Builder(@)", header: "BRepPrim_Builder.hxx".}
proc newBRepPrimBuilder*(b: BRepBuilder): BRepPrimBuilder {.cdecl, constructor,
    importcpp: "BRepPrim_Builder(@)", header: "BRepPrim_Builder.hxx".}
proc builder*(this: BRepPrimBuilder): BRepBuilder {.noSideEffect, cdecl,
    importcpp: "Builder", header: "BRepPrim_Builder.hxx".}
proc makeShell*(this: BRepPrimBuilder; s: var TopoDS_Shell) {.noSideEffect, cdecl,
    importcpp: "MakeShell", header: "BRepPrim_Builder.hxx".}
proc makeFace*(this: BRepPrimBuilder; f: var TopoDS_Face; p: PlnObj) {.noSideEffect, cdecl,
    importcpp: "MakeFace", header: "BRepPrim_Builder.hxx".}
proc makeWire*(this: BRepPrimBuilder; w: var TopoDS_Wire) {.noSideEffect, cdecl,
    importcpp: "MakeWire", header: "BRepPrim_Builder.hxx".}
proc makeDegeneratedEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge) {.noSideEffect,
    cdecl, importcpp: "MakeDegeneratedEdge", header: "BRepPrim_Builder.hxx".}
proc makeEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge; L: LinObj) {.noSideEffect, cdecl,
    importcpp: "MakeEdge", header: "BRepPrim_Builder.hxx".}
proc makeEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge; c: CircObj) {.noSideEffect, cdecl,
    importcpp: "MakeEdge", header: "BRepPrim_Builder.hxx".}
proc setPCurve*(this: BRepPrimBuilder; e: var TopoDS_Edge; f: TopoDS_Face; L: Lin2dObj) {.
    noSideEffect, cdecl, importcpp: "SetPCurve", header: "BRepPrim_Builder.hxx".}
proc setPCurve*(this: BRepPrimBuilder; e: var TopoDS_Edge; f: TopoDS_Face; l1: Lin2dObj;
               l2: Lin2dObj) {.noSideEffect, cdecl, importcpp: "SetPCurve",
                          header: "BRepPrim_Builder.hxx".}
proc setPCurve*(this: BRepPrimBuilder; e: var TopoDS_Edge; f: TopoDS_Face; c: Circ2dObj) {.
    noSideEffect, cdecl, importcpp: "SetPCurve", header: "BRepPrim_Builder.hxx".}
proc makeVertex*(this: BRepPrimBuilder; v: var TopoDS_Vertex; p: PntObj) {.noSideEffect,
    cdecl, importcpp: "MakeVertex", header: "BRepPrim_Builder.hxx".}
proc reverseFace*(this: BRepPrimBuilder; f: var TopoDS_Face) {.noSideEffect, cdecl,
    importcpp: "ReverseFace", header: "BRepPrim_Builder.hxx".}
proc addEdgeVertex*(this: BRepPrimBuilder; e: var TopoDS_Edge; v: TopoDS_Vertex;
                   p: cfloat; direct: bool) {.noSideEffect, cdecl,
    importcpp: "AddEdgeVertex", header: "BRepPrim_Builder.hxx".}
proc addEdgeVertex*(this: BRepPrimBuilder; e: var TopoDS_Edge; v: TopoDS_Vertex;
                   p1: cfloat; p2: cfloat) {.noSideEffect, cdecl,
    importcpp: "AddEdgeVertex", header: "BRepPrim_Builder.hxx".}
proc setParameters*(this: BRepPrimBuilder; e: var TopoDS_Edge; v: TopoDS_Vertex;
                   p1: cfloat; p2: cfloat) {.noSideEffect, cdecl,
    importcpp: "SetParameters", header: "BRepPrim_Builder.hxx".}
proc addWireEdge*(this: BRepPrimBuilder; w: var TopoDS_Wire; e: TopoDS_Edge;
                 direct: bool) {.noSideEffect, cdecl, importcpp: "AddWireEdge",
                               header: "BRepPrim_Builder.hxx".}
proc addFaceWire*(this: BRepPrimBuilder; f: var TopoDS_Face; w: TopoDS_Wire) {.
    noSideEffect, cdecl, importcpp: "AddFaceWire", header: "BRepPrim_Builder.hxx".}
proc addShellFace*(this: BRepPrimBuilder; sh: var TopoDS_Shell; f: TopoDS_Face) {.
    noSideEffect, cdecl, importcpp: "AddShellFace", header: "BRepPrim_Builder.hxx".}
proc completeEdge*(this: BRepPrimBuilder; e: var TopoDS_Edge) {.noSideEffect, cdecl,
    importcpp: "CompleteEdge", header: "BRepPrim_Builder.hxx".}
proc completeWire*(this: BRepPrimBuilder; w: var TopoDS_Wire) {.noSideEffect, cdecl,
    importcpp: "CompleteWire", header: "BRepPrim_Builder.hxx".}
proc completeFace*(this: BRepPrimBuilder; f: var TopoDS_Face) {.noSideEffect, cdecl,
    importcpp: "CompleteFace", header: "BRepPrim_Builder.hxx".}
proc completeShell*(this: BRepPrimBuilder; s: var TopoDS_Shell) {.noSideEffect, cdecl,
    importcpp: "CompleteShell", header: "BRepPrim_Builder.hxx".}
