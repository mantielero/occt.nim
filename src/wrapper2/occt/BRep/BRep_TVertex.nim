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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../Standard/Standard_Real, BRep_ListOfPointRepresentation,
  ../TopoDS/TopoDS_TVertex

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TVertex"
discard "forward decl of BRep_TVertex"
type
  Handle_BRep_TVertex* = handle[BRep_TVertex]

## ! The TVertex from  BRep inherits  from  the TVertex
## ! from TopoDS. It contains the geometric data.
## !
## ! The  TVertex contains a 3d point, location and a tolerance.

type
  BRep_TVertex* {.importcpp: "BRep_TVertex", header: "BRep_TVertex.hxx", bycopy.} = object of TopoDS_TVertex


proc constructBRep_TVertex*(): BRep_TVertex {.constructor,
    importcpp: "BRep_TVertex(@)", header: "BRep_TVertex.hxx".}
proc Tolerance*(this: BRep_TVertex): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRep_TVertex.hxx".}
proc Tolerance*(this: var BRep_TVertex; T: Standard_Real) {.importcpp: "Tolerance",
    header: "BRep_TVertex.hxx".}
proc UpdateTolerance*(this: var BRep_TVertex; T: Standard_Real) {.
    importcpp: "UpdateTolerance", header: "BRep_TVertex.hxx".}
proc Pnt*(this: BRep_TVertex): gp_Pnt {.noSideEffect, importcpp: "Pnt",
                                    header: "BRep_TVertex.hxx".}
proc Pnt*(this: var BRep_TVertex; P: gp_Pnt) {.importcpp: "Pnt",
    header: "BRep_TVertex.hxx".}
proc Points*(this: BRep_TVertex): BRep_ListOfPointRepresentation {.noSideEffect,
    importcpp: "Points", header: "BRep_TVertex.hxx".}
proc ChangePoints*(this: var BRep_TVertex): var BRep_ListOfPointRepresentation {.
    importcpp: "ChangePoints", header: "BRep_TVertex.hxx".}
proc EmptyCopy*(this: BRep_TVertex): handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "BRep_TVertex.hxx".}
proc DumpJson*(this: BRep_TVertex; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_TVertex.hxx".}
type
  BRep_TVertexbase_type* = TopoDS_TVertex

proc get_type_name*(): cstring {.importcpp: "BRep_TVertex::get_type_name(@)",
                              header: "BRep_TVertex.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_TVertex::get_type_descriptor(@)", header: "BRep_TVertex.hxx".}
proc DynamicType*(this: BRep_TVertex): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_TVertex.hxx".}