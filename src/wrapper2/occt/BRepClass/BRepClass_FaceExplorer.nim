##  Created on: 1992-11-19
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, ../TopExp/TopExp_Explorer,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of BRepClass_Edge"
type
  BRepClass_FaceExplorer* {.importcpp: "BRepClass_FaceExplorer",
                           header: "BRepClass_FaceExplorer.hxx", bycopy.} = object ## !
                                                                              ## Computes UV
                                                                              ## bounds of a
                                                                              ## face


proc constructBRepClass_FaceExplorer*(F: TopoDS_Face): BRepClass_FaceExplorer {.
    constructor, importcpp: "BRepClass_FaceExplorer(@)",
    header: "BRepClass_FaceExplorer.hxx".}
proc CheckPoint*(this: var BRepClass_FaceExplorer; thePoint: var gp_Pnt2d): Standard_Boolean {.
    importcpp: "CheckPoint", header: "BRepClass_FaceExplorer.hxx".}
proc Reject*(this: BRepClass_FaceExplorer; P: gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "Reject", header: "BRepClass_FaceExplorer.hxx".}
proc Segment*(this: var BRepClass_FaceExplorer; P: gp_Pnt2d; L: var gp_Lin2d;
             Par: var Standard_Real): Standard_Boolean {.importcpp: "Segment",
    header: "BRepClass_FaceExplorer.hxx".}
proc OtherSegment*(this: var BRepClass_FaceExplorer; P: gp_Pnt2d; L: var gp_Lin2d;
                  Par: var Standard_Real): Standard_Boolean {.
    importcpp: "OtherSegment", header: "BRepClass_FaceExplorer.hxx".}
proc InitWires*(this: var BRepClass_FaceExplorer) {.importcpp: "InitWires",
    header: "BRepClass_FaceExplorer.hxx".}
proc MoreWires*(this: BRepClass_FaceExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreWires", header: "BRepClass_FaceExplorer.hxx".}
proc NextWire*(this: var BRepClass_FaceExplorer) {.importcpp: "NextWire",
    header: "BRepClass_FaceExplorer.hxx".}
proc RejectWire*(this: BRepClass_FaceExplorer; L: gp_Lin2d; Par: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "RejectWire", header: "BRepClass_FaceExplorer.hxx".}
proc InitEdges*(this: var BRepClass_FaceExplorer) {.importcpp: "InitEdges",
    header: "BRepClass_FaceExplorer.hxx".}
proc MoreEdges*(this: BRepClass_FaceExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdges", header: "BRepClass_FaceExplorer.hxx".}
proc NextEdge*(this: var BRepClass_FaceExplorer) {.importcpp: "NextEdge",
    header: "BRepClass_FaceExplorer.hxx".}
proc RejectEdge*(this: BRepClass_FaceExplorer; L: gp_Lin2d; Par: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "RejectEdge", header: "BRepClass_FaceExplorer.hxx".}
proc CurrentEdge*(this: BRepClass_FaceExplorer; E: var BRepClass_Edge;
                 Or: var TopAbs_Orientation) {.noSideEffect,
    importcpp: "CurrentEdge", header: "BRepClass_FaceExplorer.hxx".}