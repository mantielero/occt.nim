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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TVertex"
discard "forward decl of BRep_TVertex"
type
  HandleBRepTVertex* = Handle[BRepTVertex]

## ! The TVertex from  BRep inherits  from  the TVertex
## ! from TopoDS. It contains the geometric data.
## !
## ! The  TVertex contains a 3d point, location and a tolerance.

type
  BRepTVertex* {.importcpp: "BRep_TVertex", header: "BRep_TVertex.hxx", bycopy.} = object of TopoDS_TVertex


proc constructBRepTVertex*(): BRepTVertex {.constructor,
    importcpp: "BRep_TVertex(@)", header: "BRep_TVertex.hxx".}
proc tolerance*(this: BRepTVertex): float {.noSideEffect, importcpp: "Tolerance",
                                        header: "BRep_TVertex.hxx".}
proc tolerance*(this: var BRepTVertex; t: float) {.importcpp: "Tolerance",
    header: "BRep_TVertex.hxx".}
proc updateTolerance*(this: var BRepTVertex; t: float) {.importcpp: "UpdateTolerance",
    header: "BRep_TVertex.hxx".}
proc pnt*(this: BRepTVertex): Pnt {.noSideEffect, importcpp: "Pnt",
                                header: "BRep_TVertex.hxx".}
proc pnt*(this: var BRepTVertex; p: Pnt) {.importcpp: "Pnt", header: "BRep_TVertex.hxx".}
proc points*(this: BRepTVertex): BRepListOfPointRepresentation {.noSideEffect,
    importcpp: "Points", header: "BRep_TVertex.hxx".}
proc changePoints*(this: var BRepTVertex): var BRepListOfPointRepresentation {.
    importcpp: "ChangePoints", header: "BRep_TVertex.hxx".}
proc emptyCopy*(this: BRepTVertex): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "BRep_TVertex.hxx".}
proc dumpJson*(this: BRepTVertex; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "BRep_TVertex.hxx".}
type
  BRepTVertexbaseType* = TopoDS_TVertex

proc getTypeName*(): cstring {.importcpp: "BRep_TVertex::get_type_name(@)",
                            header: "BRep_TVertex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_TVertex::get_type_descriptor(@)", header: "BRep_TVertex.hxx".}
proc dynamicType*(this: BRepTVertex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_TVertex.hxx".}
