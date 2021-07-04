##  Created on: 1993-03-09
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../HLRAlgo/HLRAlgo_EdgeIterator,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of HLRBRep_Data"
discard "forward decl of TopoDS_Shape"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of BRepAdaptor_Curve"
type
  StdPrs_HLRToolShape* {.importcpp: "StdPrs_HLRToolShape",
                        header: "StdPrs_HLRToolShape.hxx", bycopy.} = object


proc constructStdPrs_HLRToolShape*(TheShape: TopoDS_Shape;
                                  TheProjector: HLRAlgo_Projector): StdPrs_HLRToolShape {.
    constructor, importcpp: "StdPrs_HLRToolShape(@)",
    header: "StdPrs_HLRToolShape.hxx".}
proc NbEdges*(this: StdPrs_HLRToolShape): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "StdPrs_HLRToolShape.hxx".}
proc InitVisible*(this: var StdPrs_HLRToolShape; EdgeNumber: Standard_Integer) {.
    importcpp: "InitVisible", header: "StdPrs_HLRToolShape.hxx".}
proc MoreVisible*(this: StdPrs_HLRToolShape): Standard_Boolean {.noSideEffect,
    importcpp: "MoreVisible", header: "StdPrs_HLRToolShape.hxx".}
proc NextVisible*(this: var StdPrs_HLRToolShape) {.importcpp: "NextVisible",
    header: "StdPrs_HLRToolShape.hxx".}
proc Visible*(this: var StdPrs_HLRToolShape; TheEdge: var BRepAdaptor_Curve;
             U1: var Standard_Real; U2: var Standard_Real) {.importcpp: "Visible",
    header: "StdPrs_HLRToolShape.hxx".}
proc InitHidden*(this: var StdPrs_HLRToolShape; EdgeNumber: Standard_Integer) {.
    importcpp: "InitHidden", header: "StdPrs_HLRToolShape.hxx".}
proc MoreHidden*(this: StdPrs_HLRToolShape): Standard_Boolean {.noSideEffect,
    importcpp: "MoreHidden", header: "StdPrs_HLRToolShape.hxx".}
proc NextHidden*(this: var StdPrs_HLRToolShape) {.importcpp: "NextHidden",
    header: "StdPrs_HLRToolShape.hxx".}
proc Hidden*(this: var StdPrs_HLRToolShape; TheEdge: var BRepAdaptor_Curve;
            U1: var Standard_Real; U2: var Standard_Real) {.importcpp: "Hidden",
    header: "StdPrs_HLRToolShape.hxx".}