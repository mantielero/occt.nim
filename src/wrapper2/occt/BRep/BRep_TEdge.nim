##  Created on: 1992-05-27
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, BRep_ListOfCurveRepresentation,
  ../TopoDS/TopoDS_TEdge, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TEdge"
discard "forward decl of BRep_TEdge"
type
  Handle_BRep_TEdge* = handle[BRep_TEdge]

## ! The TEdge from BRep is  inherited from  the  TEdge
## ! from TopoDS. It contains the geometric data.
## !
## ! The TEdge contains :
## !
## ! * A tolerance.
## !
## ! * A same parameter flag.
## !
## ! * A same range flag.
## !
## ! * A Degenerated flag.
## !
## ! *  A  list   of curve representation.

type
  BRep_TEdge* {.importcpp: "BRep_TEdge", header: "BRep_TEdge.hxx", bycopy.} = object of TopoDS_TEdge ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## TEdge.


proc constructBRep_TEdge*(): BRep_TEdge {.constructor, importcpp: "BRep_TEdge(@)",
                                       header: "BRep_TEdge.hxx".}
proc Tolerance*(this: BRep_TEdge): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRep_TEdge.hxx".}
proc Tolerance*(this: var BRep_TEdge; T: Standard_Real) {.importcpp: "Tolerance",
    header: "BRep_TEdge.hxx".}
proc UpdateTolerance*(this: var BRep_TEdge; T: Standard_Real) {.
    importcpp: "UpdateTolerance", header: "BRep_TEdge.hxx".}
proc SameParameter*(this: BRep_TEdge): Standard_Boolean {.noSideEffect,
    importcpp: "SameParameter", header: "BRep_TEdge.hxx".}
proc SameParameter*(this: var BRep_TEdge; S: Standard_Boolean) {.
    importcpp: "SameParameter", header: "BRep_TEdge.hxx".}
proc SameRange*(this: BRep_TEdge): Standard_Boolean {.noSideEffect,
    importcpp: "SameRange", header: "BRep_TEdge.hxx".}
proc SameRange*(this: var BRep_TEdge; S: Standard_Boolean) {.importcpp: "SameRange",
    header: "BRep_TEdge.hxx".}
proc Degenerated*(this: BRep_TEdge): Standard_Boolean {.noSideEffect,
    importcpp: "Degenerated", header: "BRep_TEdge.hxx".}
proc Degenerated*(this: var BRep_TEdge; S: Standard_Boolean) {.
    importcpp: "Degenerated", header: "BRep_TEdge.hxx".}
proc Curves*(this: BRep_TEdge): BRep_ListOfCurveRepresentation {.noSideEffect,
    importcpp: "Curves", header: "BRep_TEdge.hxx".}
proc ChangeCurves*(this: var BRep_TEdge): var BRep_ListOfCurveRepresentation {.
    importcpp: "ChangeCurves", header: "BRep_TEdge.hxx".}
proc EmptyCopy*(this: BRep_TEdge): handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "BRep_TEdge.hxx".}
proc DumpJson*(this: BRep_TEdge; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_TEdge.hxx".}
type
  BRep_TEdgebase_type* = TopoDS_TEdge

proc get_type_name*(): cstring {.importcpp: "BRep_TEdge::get_type_name(@)",
                              header: "BRep_TEdge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_TEdge::get_type_descriptor(@)", header: "BRep_TEdge.hxx".}
proc DynamicType*(this: BRep_TEdge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_TEdge.hxx".}