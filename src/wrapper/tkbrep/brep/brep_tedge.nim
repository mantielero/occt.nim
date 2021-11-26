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

discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TEdge"
type
  HandleBRepTEdge* = Handle[BRepTEdge]

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
  BRepTEdge* {.importcpp: "BRep_TEdge", header: "BRep_TEdge.hxx", bycopy.} = object of TopoDS_TEdge ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## TEdge.


proc newBRepTEdge*(): BRepTEdge {.cdecl, constructor, importcpp: "BRep_TEdge(@)",
                               dynlib: tkbrep.}
proc tolerance*(this: BRepTEdge): cfloat {.noSideEffect, cdecl,
                                       importcpp: "Tolerance", dynlib: tkbrep.}
proc tolerance*(this: var BRepTEdge; t: cfloat) {.cdecl, importcpp: "Tolerance",
    dynlib: tkbrep.}
proc updateTolerance*(this: var BRepTEdge; t: cfloat) {.cdecl,
    importcpp: "UpdateTolerance", dynlib: tkbrep.}
proc sameParameter*(this: BRepTEdge): bool {.noSideEffect, cdecl,
    importcpp: "SameParameter", dynlib: tkbrep.}
proc sameParameter*(this: var BRepTEdge; s: bool) {.cdecl, importcpp: "SameParameter",
    dynlib: tkbrep.}
proc sameRange*(this: BRepTEdge): bool {.noSideEffect, cdecl, importcpp: "SameRange",
                                     dynlib: tkbrep.}
proc sameRange*(this: var BRepTEdge; s: bool) {.cdecl, importcpp: "SameRange",
    dynlib: tkbrep.}
proc degenerated*(this: BRepTEdge): bool {.noSideEffect, cdecl,
                                       importcpp: "Degenerated", dynlib: tkbrep.}
proc degenerated*(this: var BRepTEdge; s: bool) {.cdecl, importcpp: "Degenerated",
    dynlib: tkbrep.}
proc curves*(this: BRepTEdge): BRepListOfCurveRepresentation {.noSideEffect, cdecl,
    importcpp: "Curves", dynlib: tkbrep.}
proc changeCurves*(this: var BRepTEdge): var BRepListOfCurveRepresentation {.cdecl,
    importcpp: "ChangeCurves", dynlib: tkbrep.}
proc emptyCopy*(this: BRepTEdge): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", dynlib: tkbrep.}
proc dumpJson*(this: BRepTEdge; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkbrep.}