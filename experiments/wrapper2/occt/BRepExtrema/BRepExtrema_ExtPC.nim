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

discard "forward decl of BRepAdaptor_HCurve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
type
  BRepExtremaExtPC* {.importcpp: "BRepExtrema_ExtPC",
                     header: "BRepExtrema_ExtPC.hxx", bycopy.} = object


proc `new`*(this: var BRepExtremaExtPC; theSize: csize_t): pointer {.
    importcpp: "BRepExtrema_ExtPC::operator new", header: "BRepExtrema_ExtPC.hxx".}
proc `delete`*(this: var BRepExtremaExtPC; theAddress: pointer) {.
    importcpp: "BRepExtrema_ExtPC::operator delete",
    header: "BRepExtrema_ExtPC.hxx".}
proc `new[]`*(this: var BRepExtremaExtPC; theSize: csize_t): pointer {.
    importcpp: "BRepExtrema_ExtPC::operator new[]",
    header: "BRepExtrema_ExtPC.hxx".}
proc `delete[]`*(this: var BRepExtremaExtPC; theAddress: pointer) {.
    importcpp: "BRepExtrema_ExtPC::operator delete[]",
    header: "BRepExtrema_ExtPC.hxx".}
proc `new`*(this: var BRepExtremaExtPC; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepExtrema_ExtPC::operator new", header: "BRepExtrema_ExtPC.hxx".}
proc `delete`*(this: var BRepExtremaExtPC; a2: pointer; a3: pointer) {.
    importcpp: "BRepExtrema_ExtPC::operator delete",
    header: "BRepExtrema_ExtPC.hxx".}
proc constructBRepExtremaExtPC*(): BRepExtremaExtPC {.constructor,
    importcpp: "BRepExtrema_ExtPC(@)", header: "BRepExtrema_ExtPC.hxx".}
proc constructBRepExtremaExtPC*(v: TopoDS_Vertex; e: TopoDS_Edge): BRepExtremaExtPC {.
    constructor, importcpp: "BRepExtrema_ExtPC(@)", header: "BRepExtrema_ExtPC.hxx".}
proc initialize*(this: var BRepExtremaExtPC; e: TopoDS_Edge) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtPC.hxx".}
proc perform*(this: var BRepExtremaExtPC; v: TopoDS_Vertex) {.importcpp: "Perform",
    header: "BRepExtrema_ExtPC.hxx".}
proc isDone*(this: BRepExtremaExtPC): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtPC.hxx".}
proc nbExt*(this: BRepExtremaExtPC): int {.noSideEffect, importcpp: "NbExt",
                                       header: "BRepExtrema_ExtPC.hxx".}
proc isMin*(this: BRepExtremaExtPC; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsMin", header: "BRepExtrema_ExtPC.hxx".}
proc squareDistance*(this: BRepExtremaExtPC; n: int): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: "BRepExtrema_ExtPC.hxx".}
proc parameter*(this: BRepExtremaExtPC; n: int): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "BRepExtrema_ExtPC.hxx".}
proc point*(this: BRepExtremaExtPC; n: int): Pnt {.noSideEffect, importcpp: "Point",
    header: "BRepExtrema_ExtPC.hxx".}
proc trimmedSquareDistances*(this: BRepExtremaExtPC; dist1: var StandardReal;
                            dist2: var StandardReal; pnt1: var Pnt; pnt2: var Pnt) {.
    noSideEffect, importcpp: "TrimmedSquareDistances",
    header: "BRepExtrema_ExtPC.hxx".}