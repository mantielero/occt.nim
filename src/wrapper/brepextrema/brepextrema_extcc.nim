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

discard "forward decl of TopoDS_Edge"
discard "forward decl of PntObj"

proc newBRepExtrema_ExtCC*(): BRepExtrema_ExtCC {.cdecl, constructor,
    importcpp: "BRepExtrema_ExtCC(@)", header: "BRepExtrema_ExtCC.hxx".}
proc newBRepExtrema_ExtCC*(E1: TopoDS_Edge; E2: TopoDS_Edge): BRepExtrema_ExtCC {.
    cdecl, constructor, importcpp: "BRepExtrema_ExtCC(@)",
    header: "BRepExtrema_ExtCC.hxx".}
proc Initialize*(this: var BRepExtrema_ExtCC; E2: TopoDS_Edge) {.cdecl,
    importcpp: "Initialize", header: "BRepExtrema_ExtCC.hxx".}
proc Perform*(this: var BRepExtrema_ExtCC; E1: TopoDS_Edge) {.cdecl,
    importcpp: "Perform", header: "BRepExtrema_ExtCC.hxx".}
proc IsDone*(this: BRepExtrema_ExtCC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_ExtCC.hxx".}
proc NbExt*(this: BRepExtrema_ExtCC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "BRepExtrema_ExtCC.hxx".}
proc IsParallel*(this: BRepExtrema_ExtCC): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "BRepExtrema_ExtCC.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtCC; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "BRepExtrema_ExtCC.hxx".}
proc ParameterOnE1*(this: BRepExtrema_ExtCC; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnE1", header: "BRepExtrema_ExtCC.hxx".}
proc PointOnE1*(this: BRepExtrema_ExtCC; N: cint): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnE1", header: "BRepExtrema_ExtCC.hxx".}
proc ParameterOnE2*(this: BRepExtrema_ExtCC; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnE2", header: "BRepExtrema_ExtCC.hxx".}
proc PointOnE2*(this: BRepExtrema_ExtCC; N: cint): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnE2", header: "BRepExtrema_ExtCC.hxx".}
proc TrimmedSquareDistances*(this: BRepExtrema_ExtCC; dist11: var cfloat;
                            distP12: var cfloat; distP21: var cfloat;
                            distP22: var cfloat; P11: var PntObj; P12: var PntObj;
                            P21: var PntObj; P22: var PntObj) {.noSideEffect, cdecl,
    importcpp: "TrimmedSquareDistances", header: "BRepExtrema_ExtCC.hxx".}