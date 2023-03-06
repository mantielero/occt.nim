import brepextrema_types
import ../topods/topods_types
import ../gp/gp_types
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"

proc newBRepExtrema_ExtPC*(): BRepExtrema_ExtPC {.cdecl, constructor,
    importcpp: "BRepExtrema_ExtPC(@)", header: "BRepExtrema_ExtPC.hxx".}
proc newBRepExtrema_ExtPC*(V: TopoDS_Vertex; E: TopoDS_Edge): BRepExtrema_ExtPC {.
    cdecl, constructor, importcpp: "BRepExtrema_ExtPC(@)",
    header: "BRepExtrema_ExtPC.hxx".}
proc Initialize*(this: var BRepExtrema_ExtPC; E: TopoDS_Edge) {.cdecl,
    importcpp: "Initialize", header: "BRepExtrema_ExtPC.hxx".}
proc Perform*(this: var BRepExtrema_ExtPC; V: TopoDS_Vertex) {.cdecl,
    importcpp: "Perform", header: "BRepExtrema_ExtPC.hxx".}
proc IsDone*(this: BRepExtrema_ExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_ExtPC.hxx".}
proc NbExt*(this: BRepExtrema_ExtPC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "BRepExtrema_ExtPC.hxx".}
proc IsMin*(this: BRepExtrema_ExtPC; N: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "BRepExtrema_ExtPC.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtPC; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "BRepExtrema_ExtPC.hxx".}
proc Parameter*(this: BRepExtrema_ExtPC; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "BRepExtrema_ExtPC.hxx".}
proc Point*(this: BRepExtrema_ExtPC; N: cint): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Point", header: "BRepExtrema_ExtPC.hxx".}
proc TrimmedSquareDistances*(this: BRepExtrema_ExtPC; dist1: var cfloat;
                            dist2: var cfloat; pnt1: var gp_Pnt; pnt2: var gp_Pnt) {.
    noSideEffect, cdecl, importcpp: "TrimmedSquareDistances",
    header: "BRepExtrema_ExtPC.hxx".}