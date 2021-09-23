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
  ../Extrema/Extrema_ExtPC, ../BRepAdaptor/BRepAdaptor_HCurve,
  ../Standard/Standard_DefineAlloc

discard "forward decl of BRepAdaptor_HCurve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
type
  BRepExtrema_ExtPC* {.importcpp: "BRepExtrema_ExtPC",
                      header: "BRepExtrema_ExtPC.hxx", bycopy.} = object


proc constructBRepExtrema_ExtPC*(): BRepExtrema_ExtPC {.constructor,
    importcpp: "BRepExtrema_ExtPC(@)", header: "BRepExtrema_ExtPC.hxx".}
proc constructBRepExtrema_ExtPC*(V: TopoDS_Vertex; E: TopoDS_Edge): BRepExtrema_ExtPC {.
    constructor, importcpp: "BRepExtrema_ExtPC(@)", header: "BRepExtrema_ExtPC.hxx".}
proc Initialize*(this: var BRepExtrema_ExtPC; E: TopoDS_Edge) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtPC.hxx".}
proc Perform*(this: var BRepExtrema_ExtPC; V: TopoDS_Vertex) {.importcpp: "Perform",
    header: "BRepExtrema_ExtPC.hxx".}
proc IsDone*(this: BRepExtrema_ExtPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtPC.hxx".}
proc NbExt*(this: BRepExtrema_ExtPC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtPC.hxx".}
proc IsMin*(this: BRepExtrema_ExtPC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin", header: "BRepExtrema_ExtPC.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtPC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtPC.hxx".}
proc Parameter*(this: BRepExtrema_ExtPC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "BRepExtrema_ExtPC.hxx".}
proc Point*(this: BRepExtrema_ExtPC; N: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "BRepExtrema_ExtPC.hxx".}
proc TrimmedSquareDistances*(this: BRepExtrema_ExtPC; dist1: var Standard_Real;
                            dist2: var Standard_Real; pnt1: var gp_Pnt;
                            pnt2: var gp_Pnt) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "BRepExtrema_ExtPC.hxx".}