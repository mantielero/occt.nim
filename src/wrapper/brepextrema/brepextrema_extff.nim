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

discard "forward decl of TopoDS_Face"

proc newBRepExtrema_ExtFF*(): BRepExtrema_ExtFF {.cdecl, constructor,
    importcpp: "BRepExtrema_ExtFF(@)", header: "BRepExtrema_ExtFF.hxx".}
proc newBRepExtrema_ExtFF*(F1: TopoDS_Face; F2: TopoDS_Face): BRepExtrema_ExtFF {.
    cdecl, constructor, importcpp: "BRepExtrema_ExtFF(@)",
    header: "BRepExtrema_ExtFF.hxx".}
proc Initialize*(this: var BRepExtrema_ExtFF; F2: TopoDS_Face) {.cdecl,
    importcpp: "Initialize", header: "BRepExtrema_ExtFF.hxx".}
proc Perform*(this: var BRepExtrema_ExtFF; F1: TopoDS_Face; F2: TopoDS_Face) {.cdecl,
    importcpp: "Perform", header: "BRepExtrema_ExtFF.hxx".}
proc IsDone*(this: BRepExtrema_ExtFF): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_ExtFF.hxx".}
proc IsParallel*(this: BRepExtrema_ExtFF): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "BRepExtrema_ExtFF.hxx".}
proc NbExt*(this: BRepExtrema_ExtFF): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "BRepExtrema_ExtFF.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtFF; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "BRepExtrema_ExtFF.hxx".}
proc ParameterOnFace1*(this: BRepExtrema_ExtFF; N: cint; U: var cfloat; V: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ParameterOnFace1",
    header: "BRepExtrema_ExtFF.hxx".}
proc ParameterOnFace2*(this: BRepExtrema_ExtFF; N: cint; U: var cfloat; V: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ParameterOnFace2",
    header: "BRepExtrema_ExtFF.hxx".}
proc PointOnFace1*(this: BRepExtrema_ExtFF; N: cint): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnFace1", header: "BRepExtrema_ExtFF.hxx".}
proc PointOnFace2*(this: BRepExtrema_ExtFF; N: cint): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnFace2", header: "BRepExtrema_ExtFF.hxx".}