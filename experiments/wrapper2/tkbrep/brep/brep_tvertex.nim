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
type
  HandleBRepTVertex* = Handle[BRepTVertex]

## ! The TVertex from  BRep inherits  from  the TVertex
## ! from TopoDS. It contains the geometric data.
## !
## ! The  TVertex contains a 3d point, location and a tolerance.

type
  BRepTVertex* {.importcpp: "BRep_TVertex", header: "BRep_TVertex.hxx", bycopy.} = object of TopoDS_TVertex


proc newBRepTVertex*(): BRepTVertex {.cdecl, constructor,
                                   importcpp: "BRep_TVertex(@)", dynlib: tkbrep.}
proc tolerance*(this: BRepTVertex): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkbrep.}
proc tolerance*(this: var BRepTVertex; t: cfloat) {.cdecl, importcpp: "Tolerance",
    dynlib: tkbrep.}
proc updateTolerance*(this: var BRepTVertex; t: cfloat) {.cdecl,
    importcpp: "UpdateTolerance", dynlib: tkbrep.}
proc pnt*(this: BRepTVertex): Pnt {.noSideEffect, cdecl, importcpp: "Pnt",
                                dynlib: tkbrep.}
proc pnt*(this: var BRepTVertex; p: Pnt) {.cdecl, importcpp: "Pnt", dynlib: tkbrep.}
proc points*(this: BRepTVertex): BRepListOfPointRepresentation {.noSideEffect, cdecl,
    importcpp: "Points", dynlib: tkbrep.}
proc changePoints*(this: var BRepTVertex): var BRepListOfPointRepresentation {.cdecl,
    importcpp: "ChangePoints", dynlib: tkbrep.}
proc emptyCopy*(this: BRepTVertex): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", dynlib: tkbrep.}
proc dumpJson*(this: BRepTVertex; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}