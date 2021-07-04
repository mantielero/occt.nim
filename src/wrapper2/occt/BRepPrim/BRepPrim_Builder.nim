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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRep/BRep_Builder, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

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
  BRepPrim_Builder* {.importcpp: "BRepPrim_Builder",
                     header: "BRepPrim_Builder.hxx", bycopy.} = object ## ! Creates an empty, useless  Builder. Necesseray for
                                                                  ## ! compilation.


proc constructBRepPrim_Builder*(): BRepPrim_Builder {.constructor,
    importcpp: "BRepPrim_Builder(@)", header: "BRepPrim_Builder.hxx".}
proc constructBRepPrim_Builder*(B: BRep_Builder): BRepPrim_Builder {.constructor,
    importcpp: "BRepPrim_Builder(@)", header: "BRepPrim_Builder.hxx".}
proc Builder*(this: BRepPrim_Builder): BRep_Builder {.noSideEffect,
    importcpp: "Builder", header: "BRepPrim_Builder.hxx".}
proc MakeShell*(this: BRepPrim_Builder; S: var TopoDS_Shell) {.noSideEffect,
    importcpp: "MakeShell", header: "BRepPrim_Builder.hxx".}
proc MakeFace*(this: BRepPrim_Builder; F: var TopoDS_Face; P: gp_Pln) {.noSideEffect,
    importcpp: "MakeFace", header: "BRepPrim_Builder.hxx".}
proc MakeWire*(this: BRepPrim_Builder; W: var TopoDS_Wire) {.noSideEffect,
    importcpp: "MakeWire", header: "BRepPrim_Builder.hxx".}
proc MakeDegeneratedEdge*(this: BRepPrim_Builder; E: var TopoDS_Edge) {.noSideEffect,
    importcpp: "MakeDegeneratedEdge", header: "BRepPrim_Builder.hxx".}
proc MakeEdge*(this: BRepPrim_Builder; E: var TopoDS_Edge; L: gp_Lin) {.noSideEffect,
    importcpp: "MakeEdge", header: "BRepPrim_Builder.hxx".}
proc MakeEdge*(this: BRepPrim_Builder; E: var TopoDS_Edge; C: gp_Circ) {.noSideEffect,
    importcpp: "MakeEdge", header: "BRepPrim_Builder.hxx".}
proc SetPCurve*(this: BRepPrim_Builder; E: var TopoDS_Edge; F: TopoDS_Face; L: gp_Lin2d) {.
    noSideEffect, importcpp: "SetPCurve", header: "BRepPrim_Builder.hxx".}
proc SetPCurve*(this: BRepPrim_Builder; E: var TopoDS_Edge; F: TopoDS_Face;
               L1: gp_Lin2d; L2: gp_Lin2d) {.noSideEffect, importcpp: "SetPCurve",
    header: "BRepPrim_Builder.hxx".}
proc SetPCurve*(this: BRepPrim_Builder; E: var TopoDS_Edge; F: TopoDS_Face; C: gp_Circ2d) {.
    noSideEffect, importcpp: "SetPCurve", header: "BRepPrim_Builder.hxx".}
proc MakeVertex*(this: BRepPrim_Builder; V: var TopoDS_Vertex; P: gp_Pnt) {.
    noSideEffect, importcpp: "MakeVertex", header: "BRepPrim_Builder.hxx".}
proc ReverseFace*(this: BRepPrim_Builder; F: var TopoDS_Face) {.noSideEffect,
    importcpp: "ReverseFace", header: "BRepPrim_Builder.hxx".}
proc AddEdgeVertex*(this: BRepPrim_Builder; E: var TopoDS_Edge; V: TopoDS_Vertex;
                   P: Standard_Real; direct: Standard_Boolean) {.noSideEffect,
    importcpp: "AddEdgeVertex", header: "BRepPrim_Builder.hxx".}
proc AddEdgeVertex*(this: BRepPrim_Builder; E: var TopoDS_Edge; V: TopoDS_Vertex;
                   P1: Standard_Real; P2: Standard_Real) {.noSideEffect,
    importcpp: "AddEdgeVertex", header: "BRepPrim_Builder.hxx".}
proc SetParameters*(this: BRepPrim_Builder; E: var TopoDS_Edge; V: TopoDS_Vertex;
                   P1: Standard_Real; P2: Standard_Real) {.noSideEffect,
    importcpp: "SetParameters", header: "BRepPrim_Builder.hxx".}
proc AddWireEdge*(this: BRepPrim_Builder; W: var TopoDS_Wire; E: TopoDS_Edge;
                 direct: Standard_Boolean) {.noSideEffect,
    importcpp: "AddWireEdge", header: "BRepPrim_Builder.hxx".}
proc AddFaceWire*(this: BRepPrim_Builder; F: var TopoDS_Face; W: TopoDS_Wire) {.
    noSideEffect, importcpp: "AddFaceWire", header: "BRepPrim_Builder.hxx".}
proc AddShellFace*(this: BRepPrim_Builder; Sh: var TopoDS_Shell; F: TopoDS_Face) {.
    noSideEffect, importcpp: "AddShellFace", header: "BRepPrim_Builder.hxx".}
proc CompleteEdge*(this: BRepPrim_Builder; E: var TopoDS_Edge) {.noSideEffect,
    importcpp: "CompleteEdge", header: "BRepPrim_Builder.hxx".}
proc CompleteWire*(this: BRepPrim_Builder; W: var TopoDS_Wire) {.noSideEffect,
    importcpp: "CompleteWire", header: "BRepPrim_Builder.hxx".}
proc CompleteFace*(this: BRepPrim_Builder; F: var TopoDS_Face) {.noSideEffect,
    importcpp: "CompleteFace", header: "BRepPrim_Builder.hxx".}
proc CompleteShell*(this: BRepPrim_Builder; S: var TopoDS_Shell) {.noSideEffect,
    importcpp: "CompleteShell", header: "BRepPrim_Builder.hxx".}