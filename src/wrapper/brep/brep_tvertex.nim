import brep_types
import ../gp/gp_types
import ../topods/topods_types
import ../standard/standard_types





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





proc newBRepTVertex*(): BRepTVertex {.cdecl, constructor,
                                   importcpp: "BRep_TVertex(@)", header: "BRep_TVertex.hxx".}
proc tolerance*(this: BRepTVertex): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "BRep_TVertex.hxx".}
proc tolerance*(this: var BRepTVertex; t: cfloat) {.cdecl, importcpp: "Tolerance",
    header: "BRep_TVertex.hxx".}
proc updateTolerance*(this: var BRepTVertex; t: cfloat) {.cdecl,
    importcpp: "UpdateTolerance", header: "BRep_TVertex.hxx".}
proc pnt*(this: BRepTVertex): PntObj {.noSideEffect, cdecl, importcpp: "Pnt",
                                header: "BRep_TVertex.hxx".}
proc pnt*(this: var BRepTVertex; p: PntObj) {.cdecl, importcpp: "Pnt", header: "BRep_TVertex.hxx".}
proc points*(this: BRepTVertex): BRepListOfPointRepresentation {.noSideEffect, cdecl,
    importcpp: "Points", header: "BRep_TVertex.hxx".}
proc changePoints*(this: var BRepTVertex): var BRepListOfPointRepresentation {.cdecl,
    importcpp: "ChangePoints", header: "BRep_TVertex.hxx".}
proc emptyCopy*(this: BRepTVertex): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", header: "BRep_TVertex.hxx".}
proc dumpJson*(this: BRepTVertex; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_TVertex.hxx".}


